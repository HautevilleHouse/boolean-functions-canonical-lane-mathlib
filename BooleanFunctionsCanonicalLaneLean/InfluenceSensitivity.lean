import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure InfluencePackage where
  influenceOperator : (List Bool → Bool) → (List Bool → ℝ)
  totalInfluence : (List Bool → Bool) → ℝ
  sensitivityInequality : Prop
  poissonBoundaryForm : Prop

structure InfluenceEvidence (I : InfluencePackage) where
  sensitivityInequalityClosed : I.sensitivityInequality
  poissonBoundaryFormClosed : I.poissonBoundaryForm

def InfluenceClosed (I : InfluencePackage) : Prop :=
  I.sensitivityInequality ∧ I.poissonBoundaryForm

theorem influence_closed_from_evidence (I : InfluencePackage) (E : InfluenceEvidence I) :
    InfluenceClosed I := by
  exact And.intro E.sensitivityInequalityClosed E.poissonBoundaryFormClosed

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse