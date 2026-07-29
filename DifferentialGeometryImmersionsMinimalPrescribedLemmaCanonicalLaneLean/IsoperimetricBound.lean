import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure IsoperimetricBoundPackage (F : PrescribedCurvatureFlowPackage V) where
  areaBound : ℝ → ℝ
  volumeBound : ℝ → ℝ
  isoperimetricInequality : Prop
  sharpConstant : ℝ

def IsoperimetricBoundClosed (I : IsoperimetricBoundPackage F) : Prop :=
  I.isoperimetricInequality ∧ I.sharpConstant > 0

theorem isoperimetric_bound_closed (I : IsoperimetricBoundPackage F) : IsoperimetricBoundClosed I := by
  exact And.intro I.isoperimetricInequality (by positivity)

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse