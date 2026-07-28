import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure InfluenceNoiseSensitivityPackage where
  booleanFunctionSet : Type u
  influence : booleanFunctionSet → ℕ → ℝ
  noiseSensitivity : booleanFunctionSet → ℝ → ℝ
  kklTheorem : Prop
  itAintOverTilItsOverTheorem : Prop

structure InfluenceNoiseSensitivityEvidence (P : InfluenceNoiseSensitivityPackage) where
  kklTheoremClosed : P.kklTheorem
  itAintOverTilItsOverTheoremClosed : P.itAintOverTilItsOverTheorem

def InfluenceNoiseSensitivityClosed (P : InfluenceNoiseSensitivityPackage) : Prop :=
  P.kklTheorem ∧ P.itAintOverTilItsOverTheorem

theorem influence_noise_sensitivity_closed_from_evidence
    (P : InfluenceNoiseSensitivityPackage) (E : InfluenceNoiseSensitivityEvidence P) :
    InfluenceNoiseSensitivityClosed P := by
  exact And.intro E.kklTheoremClosed E.itAintOverTilItsOverTheoremClosed

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse