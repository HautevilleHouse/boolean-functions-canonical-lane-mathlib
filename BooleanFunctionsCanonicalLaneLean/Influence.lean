import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure InfluencePackage {n : ℕ} {f : (Fin n → Bool) → Bool} (F : FourierExpansionPackage n f) where
  influence : Fin n → ℝ
  totalInfluence : ℝ
  influenceFormula : ∀ i, influence i = ∑ S in (Finset.filter (λ T => i ∈ T) (Finset.powerset (Finset.univ : Finset (Fin n)))), (F.fourierCoefficients S) ^ 2
  totalInfluenceFormula : totalInfluence = ∑ i, influence i
  poincareInequality : Prop

structure InfluenceEvidence {n : ℕ} {f : (Fin n → Bool) → Bool} {F : FourierExpansionPackage n f} (I : InfluencePackage F) where
  poincareInequalityClosed : I.poincareInequality

def InfluenceClosed {n : ℕ} {f : (Fin n → Bool) → Bool} {F : FourierExpansionPackage n f} (I : InfluencePackage F) : Prop :=
  I.poincareInequality

theorem influence_closed_from_evidence {n : ℕ} {f : (Fin n → Bool) → Bool} {F : FourierExpansionPackage n f} (I : InfluencePackage F) (E : InfluenceEvidence I) :
    InfluenceClosed I := by
  exact E.poincareInequalityClosed

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse