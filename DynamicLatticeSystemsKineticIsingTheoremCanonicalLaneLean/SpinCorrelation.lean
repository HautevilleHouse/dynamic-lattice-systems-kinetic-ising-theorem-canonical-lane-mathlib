import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.LatticeEquilibrium

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure SpinCorrelationPackage where
  spinCorrelationFunction : Type u
  wickTheorem : Prop
  clusterDecomposition : Prop
  scalingLimit : Prop

def SpinCorrelationClosed (S : SpinCorrelationPackage) : Prop :=
  S.wickTheorem ∧ S.clusterDecomposition ∧ S.scalingLimit

structure SpinCorrelationEvidence (S : SpinCorrelationPackage) where
  wickTheoremClosed : S.wickTheorem
  clusterDecompositionClosed : S.clusterDecomposition
  scalingLimitClosed : S.scalingLimit

theorem spin_correlation_closed_from_evidence (S : SpinCorrelationPackage) (E : SpinCorrelationEvidence S) :
    SpinCorrelationClosed S := by
  exact And.intro E.wickTheoremClosed (And.intro E.clusterDecompositionClosed E.scalingLimitClosed)

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse