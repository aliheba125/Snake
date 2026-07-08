.class public final Landroidx/appcompat/view/menu/pz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/d92;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/jz1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/jz1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/v02;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/jz1;

    iput-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    iput-object p0, p1, Landroidx/appcompat/view/menu/jz1;->a:Landroidx/appcompat/view/menu/pz1;

    return-void
.end method

.method public static P(Landroidx/appcompat/view/menu/jz1;)Landroidx/appcompat/view/menu/pz1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jz1;->a:Landroidx/appcompat/view/menu/pz1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/pz1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/pz1;-><init>(Landroidx/appcompat/view/menu/jz1;)V

    return-object v0
.end method


# virtual methods
.method public final A(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/jz1;->j0(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->r0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->q0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final B(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/jz1;->q0(IJ)V

    return-void
.end method

.method public final C(ILjava/util/List;Landroidx/appcompat/view/menu/j52;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Landroidx/appcompat/view/menu/pz1;->u(ILjava/lang/Object;Landroidx/appcompat/view/menu/j52;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final D(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/jz1;->c(D)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->F(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->I(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final E(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jz1;->d(F)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->G(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->J(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final F(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->q(ILjava/lang/String;)V

    return-void
.end method

.method public final G(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/jz1;->f0(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->s(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->m(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final H(II)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->y0(II)V

    return-void
.end method

.method public final I(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jz1;->o0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->x0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->y0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final J(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/jz1;->L(IJ)V

    return-void
.end method

.method public final K(ILjava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/qx1;

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/view/menu/jz1;->n(ILandroidx/appcompat/view/menu/qx1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final L(II)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->K(II)V

    return-void
.end method

.method public final M(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/jz1;->m(IJ)V

    return-void
.end method

.method public final N(ID)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/jz1;->I(ID)V

    return-void
.end method

.method public final O(IF)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->J(IF)V

    return-void
.end method

.method public final a()I
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/j92;->a:I

    return v0
.end method

.method public final b(ILjava/util/List;Landroidx/appcompat/view/menu/j52;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Landroidx/appcompat/view/menu/pz1;->m(ILjava/lang/Object;Landroidx/appcompat/view/menu/j52;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/jz1;->S(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->s(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->m(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final d(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->r(IZ)V

    return-void
.end method

.method public final e(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    return-void
.end method

.method public final f(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jz1;->k0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->k(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->l(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final g(II)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->b0(II)V

    return-void
.end method

.method public final h(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/jz1;->n0(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->N(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->L(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final i(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/jz1;->L(IJ)V

    return-void
.end method

.method public final j(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    return-void
.end method

.method public final k(II)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->l(II)V

    return-void
.end method

.method public final l(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jz1;->h(Z)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->O(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->r(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final m(ILjava/lang/Object;Landroidx/appcompat/view/menu/j52;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    check-cast p2, Landroidx/appcompat/view/menu/w32;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    iget-object v1, v0, Landroidx/appcompat/view/menu/jz1;->a:Landroidx/appcompat/view/menu/pz1;

    invoke-interface {p3, p2, v1}, Landroidx/appcompat/view/menu/j52;->g(Ljava/lang/Object;Landroidx/appcompat/view/menu/d92;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    return-void
.end method

.method public final n(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jz1;->c0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->k(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->l(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final o(ILjava/util/List;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/jz1;->a0(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->N(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/appcompat/view/menu/jz1;->L(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final p(ILandroidx/appcompat/view/menu/m32;Ljava/util/Map;)V
    .locals 4

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Landroidx/appcompat/view/menu/g32;->a(Landroidx/appcompat/view/menu/m32;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Landroidx/appcompat/view/menu/g32;->b(Landroidx/appcompat/view/menu/jz1;Landroidx/appcompat/view/menu/m32;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jz1;->v0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->b0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final r(II)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->K(II)V

    return-void
.end method

.method public final s(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/jz1;->m(IJ)V

    return-void
.end method

.method public final t(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Landroidx/appcompat/view/menu/qx1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    check-cast p2, Landroidx/appcompat/view/menu/qx1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->M(ILandroidx/appcompat/view/menu/qx1;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    check-cast p2, Landroidx/appcompat/view/menu/w32;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->o(ILandroidx/appcompat/view/menu/w32;)V

    return-void
.end method

.method public final u(ILjava/lang/Object;Landroidx/appcompat/view/menu/j52;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    check-cast p2, Landroidx/appcompat/view/menu/w32;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/jz1;->p(ILandroidx/appcompat/view/menu/w32;Landroidx/appcompat/view/menu/j52;)V

    return-void
.end method

.method public final v(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jz1;->X(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->H(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->K(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final w(ILjava/util/List;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->V(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/jz1;->g0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->U(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/jz1;->H(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/jz1;->K(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final x(ILandroidx/appcompat/view/menu/qx1;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->n(ILandroidx/appcompat/view/menu/qx1;)V

    return-void
.end method

.method public final y(ILjava/util/List;)V
    .locals 4

    instance-of v0, p2, Landroidx/appcompat/view/menu/c22;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Landroidx/appcompat/view/menu/c22;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/c22;->j(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/view/menu/jz1;->q(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    check-cast v2, Landroidx/appcompat/view/menu/qx1;

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/view/menu/jz1;->n(ILandroidx/appcompat/view/menu/qx1;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/jz1;->q(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final z(II)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pz1;->a:Landroidx/appcompat/view/menu/jz1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/jz1;->l(II)V

    return-void
.end method
