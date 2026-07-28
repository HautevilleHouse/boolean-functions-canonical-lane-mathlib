import BooleanFunctionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure LearningPackage where
  pacModel : Type
  rademacherComplexity : Type
  vcDimensionBound : Prop
  sampleComplexityBound : Prop

structure LearningEvidence (L : LearningPackage) where
  vcDimensionBoundClosed : L.vcDimensionBound
  sampleComplexityBoundClosed : L.sampleComplexityBound

def LearningClosed (L : LearningPackage) : Prop :=
  L.vcDimensionBound ∧ L.sampleComplexityBound

theorem learning_closed_from_evidence (L : LearningPackage) (E : LearningEvidence L) :
    LearningClosed L := by
  exact And.intro E.vcDimensionBoundClosed E.sampleComplexityBoundClosed

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse