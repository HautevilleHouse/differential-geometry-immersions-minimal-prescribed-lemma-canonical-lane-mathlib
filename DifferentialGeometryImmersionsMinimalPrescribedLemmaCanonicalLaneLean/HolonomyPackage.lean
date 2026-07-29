import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroup : Type u
  ambreConnection : Type v
  parallelTransportMap : Type w
  curvatureHolonomyRelation : Prop
  restrictedHolonomy : Prop
  localHolonomyTrivial : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  curvatureHolonomyRelationClosed : H.curvatureHolonomyRelation
  restrictedHolonomyClosed : H.restrictedHolonomy
  localHolonomyTrivialClosed : H.localHolonomyTrivial

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.curvatureHolonomyRelation ∧ H.restrictedHolonomy ∧ H.localHolonomyTrivial

theorem holonomy_closed_from_evidence (H : HolonomyPackage)
    (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.curvatureHolonomyRelationClosed
    (And.intro E.restrictedHolonomyClosed E.localHolonomyTrivialClosed)

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse