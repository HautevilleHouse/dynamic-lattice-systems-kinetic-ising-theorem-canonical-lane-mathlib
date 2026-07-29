import DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.SpinFlipDynamics

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure KineticIsingCanonicalNeighborhoodsPackage where
  localUpdateRegion : Prop
  detailedBalanceOnRegion : Prop
  scaleSeparation : Prop
  neighborhoodStability : Prop

structure KineticIsingCanonicalNeighborhoodsEvidence
    (C : KineticIsingCanonicalNeighborhoodsPackage) where
  localUpdateRegionClosed : C.localUpdateRegion
  detailedBalanceOnRegionClosed : C.detailedBalanceOnRegion
  scaleSeparationClosed : C.scaleSeparation
  neighborhoodStabilityClosed : C.neighborhoodStability

def KineticIsingCanonicalNeighborhoodsClosed
    (C : KineticIsingCanonicalNeighborhoodsPackage) : Prop :=
  C.localUpdateRegion ∧ C.detailedBalanceOnRegion ∧
  C.scaleSeparation ∧ C.neighborhoodStability

theorem kinetic_ising_canonical_neighborhoods_closed_from_evidence
    (C : KineticIsingCanonicalNeighborhoodsPackage)
    (E : KineticIsingCanonicalNeighborhoodsEvidence C) :
    KineticIsingCanonicalNeighborhoodsClosed C := by
  exact And.intro E.localUpdateRegionClosed
    (And.intro E.detailedBalanceOnRegionClosed
      (And.intro E.scaleSeparationClosed E.neighborhoodStabilityClosed))

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse