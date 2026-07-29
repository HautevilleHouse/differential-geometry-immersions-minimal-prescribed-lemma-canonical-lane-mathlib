import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure VariationalStructurePackage (M : MinimalSurfaceEquationPackage E) (K : ImmersionCurvaturePackage M) where
  areaFunctional : ℝ
  firstVariationFormula : Prop
  secondVariationFormula : Prop
  stabilityCondition : Prop
  morseIndex : ℕ

structure VariationalStructureEvidence (V : VariationalStructurePackage M K) where
  firstVariationFormulaClosed : V.firstVariationFormula
  secondVariationFormulaClosed : V.secondVariationFormula
  stabilityConditionClosed : V.stabilityCondition

def VariationalStructureClosed (V : VariationalStructurePackage M K) : Prop :=
  V.firstVariationFormula ∧ V.secondVariationFormula ∧ V.stabilityCondition

theorem variational_structure_closed_from_evidence (V : VariationalStructurePackage M K) (E : VariationalStructureEvidence V) : VariationalStructureClosed V := by
  exact And.intro E.firstVariationFormulaClosed (And.intro E.secondVariationFormulaClosed E.stabilityConditionClosed)

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse