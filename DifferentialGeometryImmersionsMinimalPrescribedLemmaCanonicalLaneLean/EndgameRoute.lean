import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean.AnalyticFoundation
import DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure EndgameRoute (A : AdmissibleClass) where
  foundation : AnalyticFoundation
  foundationClosed : AnalyticFoundationClosed foundation
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem endgame_route_yields_constrained_closure (A : AdmissibleClass)
    (R : EndgameRoute A) : ConstrainedTheoremClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse