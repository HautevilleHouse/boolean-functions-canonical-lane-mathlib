import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BooleanFunctionsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BooleanFunctionsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

def ConstrainedBooleanFunctionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boolean_function_endgame (A : AdmissibleClass) :
    ConstrainedBooleanFunctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse