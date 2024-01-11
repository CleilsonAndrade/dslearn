package br.com.cleilsonandrade.dslearn.entities.pk;

import br.com.cleilsonandrade.dslearn.entities.Offer;
import br.com.cleilsonandrade.dslearn.entities.User;
import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Embeddable
public class EnrollmentPK {
  @ManyToOne
  @JoinColumn(name = "user_id")
  private User user;

  @ManyToOne
  @JoinColumn(name = "offer_id")
  private Offer offer;

  public EnrollmentPK() {
  }

  public EnrollmentPK(User user, Offer offer) {
    this.user = user;
    this.offer = offer;
  }

  public User getUser() {
    return user;
  }

  public void setUser(User user) {
    this.user = user;
  }

  public Offer getOffer() {
    return offer;
  }

  public void setOffer(Offer offer) {
    this.offer = offer;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((user == null) ? 0 : user.hashCode());
    result = prime * result + ((offer == null) ? 0 : offer.hashCode());
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
    EnrollmentPK other = (EnrollmentPK) obj;
    if (user == null) {
      if (other.user != null)
        return false;
    } else if (!user.equals(other.user))
      return false;
    if (offer == null) {
      if (other.offer != null)
        return false;
    } else if (!offer.equals(other.offer))
      return false;
    return true;
  }

}
