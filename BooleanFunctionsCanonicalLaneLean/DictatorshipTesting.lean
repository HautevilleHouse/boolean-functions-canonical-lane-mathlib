import BooleanFunctionsCanonicalLaneLean.FourierTransform

/-! 
# Dictatorship Testing Package
-/

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure DictatorshipTestingPackage {A : AdmissibleClass} {P : BooleanFunctionAnalysisPackage A}
    (F : FourierTransformPackage P) where
  noiseStabilityBound : Prop
  monotoneDictatorshipDetection : Prop
  uniqueInfluenceCharacterization : Prop

structure DictatorshipTestingEvidence {A : AdmissibleClass} {P : BooleanFunctionAnalysisPackage A}
    {F : FourierTransformPackage P} (D : DictatorshipTestingPackage F) where
  noiseStabilityBoundClosed : D.noiseStabilityBound
  monotoneDictatorshipDetectionClosed : D.monotoneDictatorshipDetection
  uniqueInfluenceCharacterizationClosed : D.uniqueInfluenceCharacterization

def DictatorshipTestingClosed {A : AdmissibleClass} {P : BooleanFunctionAnalysisPackage A}
    {F : FourierTransformPackage P} (D : DictatorshipTestingPackage F) : Prop :=
  D.noiseStabilityBound ∧ D.monotoneDictatorshipDetection ∧ D.uniqueInfluenceCharacterization

theorem dictatorship_testing_closed_from_evidence
    {A : AdmissibleClass} {P : BooleanFunctionAnalysisPackage A}
    {F : FourierTransformPackage P} (D : DictatorshipTestingPackage F)
    (E : DictatorshipTestingEvidence D) : DictatorshipTestingClosed D := by
  exact And.intro E.noiseStabilityBoundClosed
    (And.intro E.monotoneDictatorshipDetectionClosed E.uniqueInfluenceCharacterizationClosed)

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse