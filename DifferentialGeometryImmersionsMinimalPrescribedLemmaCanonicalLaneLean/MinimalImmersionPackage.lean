import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure MinimalImmersionPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceRiemannianMetric : Type w
  targetRiemannianMetric : Type x
  immersionMap : Type y
  minimalCondition : Prop
  meanCurvatureZero : Prop
  prescribedBoundaryCondition : Prop
  compactSource : Prop
  compactTarget : Prop

structure MinimalImmersionEvidence (M : MinimalImmersionPackage) where
  minimalConditionClosed : M.minimalCondition
  meanCurvatureZeroClosed : M.meanCurvatureZero
  prescribedBoundaryConditionClosed : M.prescribedBoundaryCondition
  compactSourceClosed : M.compactSource
  compactTargetClosed : M.compactTarget

def MinimalImmersionClosed (M : MinimalImmersionPackage) : Prop :=
  M.minimalCondition ∧ M.meanCurvatureZero ∧ M.prescribedBoundaryCondition ∧
  M.compactSource ∧ M.compactTarget

theorem minimal_immersion_closed_from_evidence (M : MinimalImmersionPackage)
    (E : MinimalImmersionEvidence M) : MinimalImmersionClosed M := by
  exact And.intro E.minimalConditionClosed
    (And.intro E.meanCurvatureZeroClosed
      (And.intro E.prescribedBoundaryConditionClosed
        (And.intro E.compactSourceClosed E.compactTargetClosed)))

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse