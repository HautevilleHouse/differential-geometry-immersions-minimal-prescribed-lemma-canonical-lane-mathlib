import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure IndexTheoremPackage where
  ellipticOperator : Type u
  analyticIndex : Prop
  topologicalIndex : Prop
  indexEquality : Prop
  heatKernelAsymptotics : Prop
  chernWeilTheoryUsed : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualityClosed : I.indexEquality
  heatKernelAsymptoticsClosed : I.heatKernelAsymptotics
  chernWeilTheoryUsedClosed : I.chernWeilTheoryUsed

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ I.indexEquality ∧
  I.heatKernelAsymptotics ∧ I.chernWeilTheoryUsed

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.analyticIndexClosed
    (And.intro E.topologicalIndexClosed
      (And.intro E.indexEqualityClosed
        (And.intro E.heatKernelAsymptoticsClosed E.chernWeilTheoryUsedClosed)))

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse