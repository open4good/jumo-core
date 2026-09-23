"""gen-java, with one type mapping LinkML's generator lacks: xsd:long.

linkml's javagen TYPEMAP stops at xsd:integer -> Integer (int when required), so no metamodel type
could be generated wider than 32 bits, and a byte count above 2 GiB -- a 10 GiB PersonalSpace
quota -- overflowed when ContractLoader bound the document, refusing the whole corpus
(metamodel-byte-sizes-overflow-java-int). The ByteCount type (metamodel/modules/core.yaml) declares
uri xsd:long; this wrapper maps it to Long, and to long when the slot is required, mirroring what
the stock generator does for Integer/int. Every other mapping is the stock one.

Invoked by generate-metamodel.sh in place of the gen-java console script, with the same arguments.
"""

from linkml.generators import javagen

javagen.TYPEMAP.setdefault("xsd:long", "Long")

_stock_map_type = javagen.JavaGenerator.map_type


def _map_type(self, t, required=False):
    mapped = _stock_map_type(self, t, required)
    return "long" if required and mapped == "Long" else mapped


javagen.JavaGenerator.map_type = _map_type

if __name__ == "__main__":
    javagen.cli()
