import BooleanFunctionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure InfluencePackage where
  influenceDefinition : Type
  noiseSensitivityDefinition : Type
  kklTheorem : Prop
  noiseStability : Prop

structure InfluenceEvidence (I : InfluencePackage) where
  kklTheoremClosed : I.kklTheorem
  noiseStabilityClosed : I.noiseStability

def InfluenceClosed (I : InfluencePackage) : Prop :=
  I.kklTheorem ∧ I.noiseStability

theorem influence_closed_from_evidence (I : InfluencePackage) (E : InfluenceEvidence I) :
    InfluenceClosed I := by
  exact And.intro E.kklTheoremClosed E.noiseStabilityClosed

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse