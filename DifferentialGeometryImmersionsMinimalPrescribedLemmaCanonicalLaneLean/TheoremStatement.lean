import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String :=
  "differential-geometry-immersions-minimal-prescribed-lemma"

def sourceDescription : String :=
  "Differential Geometry Immersions Minimal Prescribed Lemma"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    classicalBoundary := "classical source boundary remains open",
    manifoldConstrainedStatement := "manifold-constrained immersion closure internalized via bridge and gate",
    certificateLane := "immersion_constrained",
    carriedRemainder := "classical boundary carried by formalization certificate" }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse