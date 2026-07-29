import DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.KineticIsingCanonicalNeighborhoods

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure GlauberDynamicsPackage where
  transitionRateExplicit : Prop
  magnetisationEvolution : Prop
  relaxationRate : Prop
  fixedPointDistribution : Prop

structure GlauberDynamicsEvidence (G : GlauberDynamicsPackage) where
  transitionRateExplicitClosed : G.transitionRateExplicit
  magnetisationEvolutionClosed : G.magnetisationEvolution
  relaxationRateClosed : G.relaxationRate
  fixedPointDistributionClosed : G.fixedPointDistribution

def GlauberDynamicsClosed (G : GlauberDynamicsPackage) : Prop :=
  G.transitionRateExplicit ∧ G.magnetisationEvolution ∧
  G.relaxationRate ∧ G.fixedPointDistribution

theorem glauber_dynamics_closed_from_evidence
    (G : GlauberDynamicsPackage) (E : GlauberDynamicsEvidence G) :
    GlauberDynamicsClosed G := by
  exact And.intro E.transitionRateExplicitClosed
    (And.intro E.magnetisationEvolutionClosed
      (And.intro E.relaxationRateClosed E.fixedPointDistributionClosed))

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse