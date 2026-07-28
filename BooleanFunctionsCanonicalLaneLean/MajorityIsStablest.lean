import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure MajorityIsStablestPackage where
  majorityFunction : (ℕ → {0,1}) → {0,1}
  stablestProperty : Prop
  invariancePrinciple : Prop
  gaussianStability : Prop

structure MajorityIsStablestEvidence (M : MajorityIsStablestPackage) where
  stablestPropertyClosed : M.stablestProperty
  invariancePrincipleClosed : M.invariancePrinciple
  gaussianStabilityClosed : M.gaussianStability

def MajorityIsStablestClosed (M : MajorityIsStablestPackage) : Prop :=
  M.stablestProperty ∧ M.invariancePrinciple ∧ M.gaussianStability

theorem majority_is_stablest_closed_from_evidence (M : MajorityIsStablestPackage)
    (E : MajorityIsStablestEvidence M) : MajorityIsStablestClosed M := by
  exact And.intro E.stablestPropertyClosed
    (And.intro E.invariancePrincipleClosed E.gaussianStabilityClosed)

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse