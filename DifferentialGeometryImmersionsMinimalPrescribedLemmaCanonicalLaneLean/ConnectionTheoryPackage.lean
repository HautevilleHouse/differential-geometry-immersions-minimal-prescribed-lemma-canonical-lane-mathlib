import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure ConnectionTheoryPackage where
  leviCivitaConnection : Type u
  covariantDerivative : Type v
  parallelTransport : Type w
  torsionTensorZero : Prop
  metricCompatibility : Prop
  curvatureTensorDerived : Prop

structure ConnectionTheoryEvidence (C : ConnectionTheoryPackage) where
  torsionTensorZeroClosed : C.torsionTensorZero
  metricCompatibilityClosed : C.metricCompatibility
  curvatureTensorDerivedClosed : C.curvatureTensorDerived

def ConnectionTheoryClosed (C : ConnectionTheoryPackage) : Prop :=
  C.torsionTensorZero ∧ C.metricCompatibility ∧ C.curvatureTensorDerived

theorem connection_theory_closed_from_evidence (C : ConnectionTheoryPackage)
    (E : ConnectionTheoryEvidence C) : ConnectionTheoryClosed C := by
  exact And.intro E.torsionTensorZeroClosed
    (And.intro E.metricCompatibilityClosed E.curvatureTensorDerivedClosed)

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse