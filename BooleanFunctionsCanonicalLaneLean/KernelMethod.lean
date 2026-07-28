import BooleanFunctionsCanonicalLaneLean.DictatorshipTesting

/-! 
# Kernel Method Package
-/

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure KernelMethodPackage {A : AdmissibleClass} {P : BooleanFunctionAnalysisPackage A}
    {F : FourierTransformPackage P} (D : DictatorshipTestingPackage F) where
  kernelConstruction : Prop
  lowDegreeApproximation : Prop
  regressionAlgorithm : Prop

structure KernelMethodEvidence {A : AdmissibleClass} {P : BooleanFunctionAnalysisPackage A}
    {F : FourierTransformPackage P} {D : DictatorshipTestingPackage F}
    (K : KernelMethodPackage D) where
  kernelConstructionClosed : K.kernelConstruction
  lowDegreeApproximationClosed : K.lowDegreeApproximation
  regressionAlgorithmClosed : K.regressionAlgorithm

def KernelMethodClosed {A : AdmissibleClass} {P : BooleanFunctionAnalysisPackage A}
    {F : FourierTransformPackage P} {D : DictatorshipTestingPackage F}
    (K : KernelMethodPackage D) : Prop :=
  K.kernelConstruction ∧ K.lowDegreeApproximation ∧ K.regressionAlgorithm

theorem kernel_method_closed_from_evidence
    {A : AdmissibleClass} {P : BooleanFunctionAnalysisPackage A}
    {F : FourierTransformPackage P} {D : DictatorshipTestingPackage F}
    (K : KernelMethodPackage D) (E : KernelMethodEvidence K) : KernelMethodClosed K := by
  exact And.intro E.kernelConstructionClosed
    (And.intro E.lowDegreeApproximationClosed E.regressionAlgorithmClosed)

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse