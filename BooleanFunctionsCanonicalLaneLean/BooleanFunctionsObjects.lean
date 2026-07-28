import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure BooleanFunctionSpace where
  dimension : Nat

def Hypercube (n : Nat) : Type := Fin n → Bool

structure BooleanFunction where
  domain : BooleanFunctionSpace
  mapping : Hypercube domain.dimension → Bool

structure AdmittedBooleanObject where
  fn : BooleanFunction
  relevantProperty : Prop
  conclusion : relevantProperty

def BooleanFunctionClosed (O : AdmittedBooleanObject) : Prop :=
  O.relevantProperty

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse