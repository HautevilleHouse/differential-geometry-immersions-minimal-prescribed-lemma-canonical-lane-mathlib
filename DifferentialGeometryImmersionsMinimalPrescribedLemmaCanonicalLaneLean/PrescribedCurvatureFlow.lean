import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure PrescribedCurvatureFlowPackage (V : VariationalStructurePackage M K) where
  flowParameter : ℝ → ℝ
  evolutionEquation : Prop
  parabolicRegularity : Prop
  shortTimeExistence : Prop
  convergenceResult : Prop

structure PrescribedCurvatureFlowEvidence (F : PrescribedCurvatureFlowPackage V) where
  evolutionEquationClosed : F.evolutionEquation
  parabolicRegularityClosed : F.parabolicRegularity
  shortTimeExistenceClosed : F.shortTimeExistence
  convergenceResultClosed : F.convergenceResult

def PrescribedCurvatureFlowClosed (F : PrescribedCurvatureFlowPackage V) : Prop :=
  F.evolutionEquation ∧ F.parabolicRegularity ∧ F.shortTimeExistence ∧ F.convergenceResult

theorem prescribed_curvature_flow_closed_from_evidence (F : PrescribedCurvatureFlowPackage V) (E : PrescribedCurvatureFlowEvidence F) : PrescribedCurvatureFlowClosed F := by
  exact And.intro E.evolutionEquationClosed (And.intro E.parabolicRegularityClosed (And.intro E.shortTimeExistenceClosed E.convergenceResultClosed))

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse