import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure BooleanFunctionAdmittedObject where
  n : ℕ
  f : (Fin n → Bool) → Bool
  propertyStatement : Prop

structure AdmissibleClass where
  object : BooleanFunctionAdmittedClass
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse