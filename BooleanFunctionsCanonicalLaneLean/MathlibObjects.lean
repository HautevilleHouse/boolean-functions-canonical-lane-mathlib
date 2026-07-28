import BooleanFunctionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure BooleanFunctionWitnessClosed (O : BooleanFunctionAdmittedObject) : Prop where
  balancedCondition : O.balanced
  monotoneCondition : O.monotone

theorem boolean_function_witness_closed (O : BooleanFunctionAdmittedObject) :
    BooleanFunctionWitnessClosed O := by
  exact ⟨O.balanced, O.monotone⟩

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse