import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure HypercontractivityPackage {n : ℕ} (F : FourierExpansionPackage n) where
  bonamiBecknerInequality : Prop
  hypercontractiveConstant : ℝ → ℝ → ℝ
  hypercontractivityStatement : Prop

structure HypercontractivityEvidence {n : ℕ} {F : FourierExpansionPackage n} (H : HypercontractivityPackage F) where
  bonamiBecknerInequalityClosed : H.bonamiBecknerInequality
  hypercontractivityStatementClosed : H.hypercontractivityStatement

def HypercontractivityClosed {n : ℕ} {F : FourierExpansionPackage n} (H : HypercontractivityPackage F) : Prop :=
  H.bonamiBecknerInequality ∧ H.hypercontractivityStatement

theorem hypercontractivity_closed_from_evidence {n : ℕ} {F : FourierExpansionPackage n} (H : HypercontractivityPackage F) (E : HypercontractivityEvidence H) :
    HypercontractivityClosed H := by
  exact And.intro E.bonamiBecknerInequalityClosed E.hypercontractivityStatementClosed

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse