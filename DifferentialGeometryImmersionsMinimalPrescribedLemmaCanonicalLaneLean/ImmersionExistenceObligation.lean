import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean.ImmersionCurvaturePackage
import DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean.MinimalVariationFlow
import DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean.PrescribedMeanCurvatureData

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure ImmersionExistenceObligation {M : Type u} [TopologicalSpace M]
    (G : ImmersionCurvaturePackage M) (F : MinimalVariationFlowPackage G)
    (D : PrescribedMeanCurvatureData G) where
  globalExistence : Prop
  longtimeBehavior : Prop
  convergenceToPrescribed : Prop
  uniquenessUnderConstraints : Prop

structure ImmersionExistenceEvidence {M : Type u} [TopologicalSpace M]
    {G : ImmersionCurvaturePackage M} {F : MinimalVariationFlowPackage G}
    {D : PrescribedMeanCurvatureData G} (O : ImmersionExistenceObligation G F D) where
  globalExistenceClosed : O.globalExistence
  longtimeBehaviorClosed : O.longtimeBehavior
  convergenceToPrescribedClosed : O.convergenceToPrescribed
  uniquenessUnderConstraintsClosed : O.uniquenessUnderConstraints

def ImmersionExistenceClosed {M : Type u} [TopologicalSpace M]
    {G : ImmersionCurvaturePackage M} {F : MinimalVariationFlowPackage G}
    {D : PrescribedMeanCurvatureData G} (O : ImmersionExistenceObligation G F D) : Prop :=
  O.globalExistence ∧ O.longtimeBehavior ∧ O.convergenceToPrescribed ∧ O.uniquenessUnderConstraints

theorem immersion_existence_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {G : ImmersionCurvaturePackage M}
    {F : MinimalVariationFlowPackage G} {D : PrescribedMeanCurvatureData G}
    (O : ImmersionExistenceObligation G F D) (E : ImmersionExistenceEvidence O) :
    ImmersionExistenceClosed O :=
  And.intro E.globalExistenceClosed
    (And.intro E.longtimeBehaviorClosed
      (And.intro E.convergenceToPrescribedClosed E.uniquenessUnderConstraintsClosed))

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse