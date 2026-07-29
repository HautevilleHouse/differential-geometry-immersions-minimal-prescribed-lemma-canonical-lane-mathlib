import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure ImmersionCurvaturePackage (I : MinimalSurfaceEquationPackage E) where
  secondFundamentalForm : E → ℝ
  gaussCurvature : E → ℝ
  meanCurvature : E → ℝ
  gaussEquation : Prop
  codazziEquation : Prop
  curvatureRelations : Prop

structure ImmersionCurvatureEvidence (K : ImmersionCurvaturePackage I) where
  gaussEquationClosed : K.gaussEquation
  codazziEquationClosed : K.codazziEquation
  curvatureRelationsClosed : K.curvatureRelations

def ImmersionCurvatureClosed (K : ImmersionCurvaturePackage I) : Prop :=
  K.gaussEquation ∧ K.codazziEquation ∧ K.curvatureRelations

theorem immersion_curvature_closed_from_evidence (K : ImmersionCurvaturePackage I) (E : ImmersionCurvatureEvidence K) : ImmersionCurvatureClosed K := by
  exact And.intro E.gaussEquationClosed (And.intro E.codazziEquationClosed E.curvatureRelationsClosed)

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse