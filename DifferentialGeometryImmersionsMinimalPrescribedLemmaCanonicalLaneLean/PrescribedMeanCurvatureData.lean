import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure PrescribedMeanCurvatureData {M : Type u} [TopologicalSpace M]
    (G : ImmersionCurvaturePackage M) where
  targetCurvatureVector : G.immersedManifold → M
  prescribedEquation : Prop
  divergenceFreeCondition : Prop
  integrabilityCondition : Prop

structure PrescribedMeanCurvatureEvidence {M : Type u} [TopologicalSpace M]
    {G : ImmersionCurvaturePackage M} (D : PrescribedMeanCurvatureData G) where
  prescribedEquationClosed : D.prescribedEquation
  divergenceFreeConditionClosed : D.divergenceFreeCondition
  integrabilityConditionClosed : D.integrabilityCondition

def PrescribedMeanCurvatureClosed {M : Type u} [TopologicalSpace M]
    {G : ImmersionCurvaturePackage M} (D : PrescribedMeanCurvatureData G) : Prop :=
  D.prescribedEquation ∧ D.divergenceFreeCondition ∧ D.integrabilityCondition

theorem prescribed_mean_curvature_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {G : ImmersionCurvaturePackage M}
    (D : PrescribedMeanCurvatureData G) (E : PrescribedMeanCurvatureEvidence D) :
    PrescribedMeanCurvatureClosed D :=
  And.intro E.prescribedEquationClosed
    (And.intro E.divergenceFreeConditionClosed E.integrabilityConditionClosed)

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse