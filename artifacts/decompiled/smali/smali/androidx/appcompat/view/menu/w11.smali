.class public Landroidx/appcompat/view/menu/w11;
.super Landroidx/appcompat/view/menu/s11;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/w11$b;
    }
.end annotation


# instance fields
.field public V:Ljava/util/ArrayList;

.field public W:Z

.field public X:I

.field public Y:Z

.field public Z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/s11;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/w11;->W:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/w11;->Y:Z

    iput v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    return-void
.end method


# virtual methods
.method public Q(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->Q(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/s11;->Q(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic S(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/s11;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/w11;->l0(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/w11;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T(Landroid/view/View;)Landroidx/appcompat/view/menu/s11;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/w11;->m0(Landroid/view/View;)Landroidx/appcompat/view/menu/w11;

    move-result-object p1

    return-object p1
.end method

.method public U(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->U(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/s11;->U(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public W()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/s11;->d0()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/s11;->s()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/w11;->r0()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/w11;->W:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/s11;

    iget-object v2, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/s11;

    new-instance v3, Landroidx/appcompat/view/menu/w11$a;

    invoke-direct {v3, p0, v2}, Landroidx/appcompat/view/menu/w11$a;-><init>(Landroidx/appcompat/view/menu/w11;Landroidx/appcompat/view/menu/s11;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/s11;->a(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/s11;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/s11;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s11;->W()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/s11;->W()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic X(J)Landroidx/appcompat/view/menu/s11;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/w11;->n0(J)Landroidx/appcompat/view/menu/w11;

    move-result-object p1

    return-object p1
.end method

.method public Y(Landroidx/appcompat/view/menu/s11$e;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->Y(Landroidx/appcompat/view/menu/s11$e;)V

    iget v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/s11;->Y(Landroidx/appcompat/view/menu/s11$e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic Z(Landroid/animation/TimeInterpolator;)Landroidx/appcompat/view/menu/s11;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/w11;->o0(Landroid/animation/TimeInterpolator;)Landroidx/appcompat/view/menu/w11;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/s11;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/w11;->f0(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/w11;

    move-result-object p1

    return-object p1
.end method

.method public a0(Landroidx/appcompat/view/menu/sh0;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->a0(Landroidx/appcompat/view/menu/sh0;)V

    iget v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/s11;->a0(Landroidx/appcompat/view/menu/sh0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Landroid/view/View;)Landroidx/appcompat/view/menu/s11;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/w11;->g0(Landroid/view/View;)Landroidx/appcompat/view/menu/w11;

    move-result-object p1

    return-object p1
.end method

.method public b0(Landroidx/appcompat/view/menu/v11;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->b0(Landroidx/appcompat/view/menu/v11;)V

    iget v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/s11;->b0(Landroidx/appcompat/view/menu/v11;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic c0(J)Landroidx/appcompat/view/menu/s11;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/w11;->q0(J)Landroidx/appcompat/view/menu/w11;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/w11;->p()Landroidx/appcompat/view/menu/s11;

    move-result-object v0

    return-object v0
.end method

.method public e0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/s11;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/s11;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public f0(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/w11;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->a(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/s11;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/w11;

    return-object p1
.end method

.method public g(Landroidx/appcompat/view/menu/y11;)V
    .locals 3

    iget-object v0, p1, Landroidx/appcompat/view/menu/y11;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/s11;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/s11;

    iget-object v2, p1, Landroidx/appcompat/view/menu/y11;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/s11;->J(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/s11;->g(Landroidx/appcompat/view/menu/y11;)V

    iget-object v2, p1, Landroidx/appcompat/view/menu/y11;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g0(Landroid/view/View;)Landroidx/appcompat/view/menu/w11;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/s11;->b(Landroid/view/View;)Landroidx/appcompat/view/menu/s11;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->b(Landroid/view/View;)Landroidx/appcompat/view/menu/s11;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/w11;

    return-object p1
.end method

.method public h0(Landroidx/appcompat/view/menu/s11;)Landroidx/appcompat/view/menu/w11;
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/w11;->i0(Landroidx/appcompat/view/menu/s11;)V

    iget-wide v0, p0, Landroidx/appcompat/view/menu/s11;->o:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/s11;->X(J)Landroidx/appcompat/view/menu/s11;

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/s11;->v()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/s11;->Z(Landroid/animation/TimeInterpolator;)Landroidx/appcompat/view/menu/s11;

    :cond_1
    iget v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/s11;->z()Landroidx/appcompat/view/menu/v11;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/s11;->b0(Landroidx/appcompat/view/menu/v11;)V

    :cond_2
    iget v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/s11;->y()Landroidx/appcompat/view/menu/sh0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/s11;->a0(Landroidx/appcompat/view/menu/sh0;)V

    :cond_3
    iget v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/s11;->u()Landroidx/appcompat/view/menu/s11$e;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/s11;->Y(Landroidx/appcompat/view/menu/s11$e;)V

    :cond_4
    return-object p0
.end method

.method public i(Landroidx/appcompat/view/menu/y11;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->i(Landroidx/appcompat/view/menu/y11;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/s11;->i(Landroidx/appcompat/view/menu/y11;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i0(Landroidx/appcompat/view/menu/s11;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Landroidx/appcompat/view/menu/s11;->D:Landroidx/appcompat/view/menu/w11;

    return-void
.end method

.method public j(Landroidx/appcompat/view/menu/y11;)V
    .locals 3

    iget-object v0, p1, Landroidx/appcompat/view/menu/y11;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/s11;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/s11;

    iget-object v2, p1, Landroidx/appcompat/view/menu/y11;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/s11;->J(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/s11;->j(Landroidx/appcompat/view/menu/y11;)V

    iget-object v2, p1, Landroidx/appcompat/view/menu/y11;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j0(I)Landroidx/appcompat/view/menu/s11;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/s11;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public k0()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public l0(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/w11;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->S(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/s11;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/w11;

    return-object p1
.end method

.method public m0(Landroid/view/View;)Landroidx/appcompat/view/menu/w11;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/s11;->T(Landroid/view/View;)Landroidx/appcompat/view/menu/s11;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->T(Landroid/view/View;)Landroidx/appcompat/view/menu/s11;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/w11;

    return-object p1
.end method

.method public n0(J)Landroidx/appcompat/view/menu/w11;
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/s11;->X(J)Landroidx/appcompat/view/menu/s11;

    iget-wide v0, p0, Landroidx/appcompat/view/menu/s11;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/view/menu/s11;->X(J)Landroidx/appcompat/view/menu/s11;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public o0(Landroid/animation/TimeInterpolator;)Landroidx/appcompat/view/menu/w11;
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/w11;->Z:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/s11;->Z(Landroid/animation/TimeInterpolator;)Landroidx/appcompat/view/menu/s11;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/s11;->Z(Landroid/animation/TimeInterpolator;)Landroidx/appcompat/view/menu/s11;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/w11;

    return-object p1
.end method

.method public p()Landroidx/appcompat/view/menu/s11;
    .locals 4

    invoke-super {p0}, Landroidx/appcompat/view/menu/s11;->p()Landroidx/appcompat/view/menu/s11;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/w11;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/s11;->p()Landroidx/appcompat/view/menu/s11;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/w11;->i0(Landroidx/appcompat/view/menu/s11;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public p0(I)Landroidx/appcompat/view/menu/w11;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/w11;->W:Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/w11;->W:Z

    :goto_0
    return-object p0
.end method

.method public q0(J)Landroidx/appcompat/view/menu/w11;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/s11;->c0(J)Landroidx/appcompat/view/menu/s11;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/w11;

    return-object p1
.end method

.method public r(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/z11;Landroidx/appcompat/view/menu/z11;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12

    move-object v0, p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/s11;->B()J

    move-result-wide v1

    iget-object v3, v0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/appcompat/view/menu/s11;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    iget-boolean v5, v0, Landroidx/appcompat/view/menu/w11;->W:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/s11;->B()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    invoke-virtual {v6, v9, v10}, Landroidx/appcompat/view/menu/s11;->c0(J)Landroidx/appcompat/view/menu/s11;

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1, v2}, Landroidx/appcompat/view/menu/s11;->c0(J)Landroidx/appcompat/view/menu/s11;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/view/menu/s11;->r(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/z11;Landroidx/appcompat/view/menu/z11;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final r0()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/w11$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/w11$b;-><init>(Landroidx/appcompat/view/menu/w11;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/s11;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/s11;->a(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/s11;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/w11;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/w11;->X:I

    return-void
.end method
