import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure MinimalSurfaceEquationPackage (E : Type u) where
  immersion : E → EuclideanSpace ℝ (Fin 3)
  prescribedMeanCurvatureH : E → ℝ
  minimalSurfaceEquation : Prop
  weakSolution : Prop
  regularity : Prop

structure MinimalSurfaceEquationEvidence (M : MinimalSurfaceEquationPackage E) where
  minimalSurfaceEquationClosed : M.minimalSurfaceEquation
  weakSolutionClosed : M.weakSolution
  regularityClosed : M.regularity

def MinimalSurfaceEquationClosed (M : MinimalSurfaceEquationPackage E) : Prop :=
  M.minimalSurfaceEquation ∧ M.weakSolution ∧ M.regularity

theorem minimal_surface_equation_closed_from_evidence (M : MinimalSurfaceEquationPackage E) (E : MinimalSurfaceEquationEvidence M) : MinimalSurfaceEquationClosed M := by
  exact And.intro E.minimalSurfaceEquationClosed (And.intro E.weakSolutionClosed E.regularityClosed)

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse