.class public final Landroidx/appcompat/view/menu/pj1;
.super Landroidx/appcompat/view/menu/gh1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/gh1;-><init>()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->q:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->B:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->E:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->F:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->L:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->U:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->W:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->X:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->k0:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->t0:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->x0:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->y0:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->z0:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/nj1;->a:[I

    invoke-static {p1}, Landroidx/appcompat/view/menu/iu1;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/tj1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/gh1;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    return-object p1

    :pswitch_0
    sget-object p1, Landroidx/appcompat/view/menu/tj1;->z0:Landroidx/appcompat/view/menu/tj1;

    invoke-static {p1, v3, p3}, Landroidx/appcompat/view/menu/iu1;->j(Landroidx/appcompat/view/menu/tj1;ILjava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p3

    instance-of v0, p3, Landroidx/appcompat/view/menu/ug1;

    if-eqz v0, :cond_0

    invoke-interface {p3}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/view/menu/pw1;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Expected string for var name. got %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    return-object p1

    :pswitch_1
    sget-object p1, Landroidx/appcompat/view/menu/tj1;->y0:Landroidx/appcompat/view/menu/tj1;

    invoke-static {p1, v2, p3}, Landroidx/appcompat/view/menu/iu1;->f(Landroidx/appcompat/view/menu/tj1;ILjava/util/List;)V

    sget-object p1, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    return-object p1

    :pswitch_2
    sget-object p1, Landroidx/appcompat/view/menu/tj1;->x0:Landroidx/appcompat/view/menu/tj1;

    invoke-static {p1, v3, p3}, Landroidx/appcompat/view/menu/iu1;->f(Landroidx/appcompat/view/menu/tj1;ILjava/util/List;)V

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    instance-of p2, p1, Landroidx/appcompat/view/menu/eh1;

    if-eqz p2, :cond_2

    const-string p1, "undefined"

    goto :goto_1

    :cond_2
    instance-of p2, p1, Landroidx/appcompat/view/menu/sf1;

    if-eqz p2, :cond_3

    const-string p1, "boolean"

    goto :goto_1

    :cond_3
    instance-of p2, p1, Landroidx/appcompat/view/menu/yf1;

    if-eqz p2, :cond_4

    const-string p1, "number"

    goto :goto_1

    :cond_4
    instance-of p2, p1, Landroidx/appcompat/view/menu/ug1;

    if-eqz p2, :cond_5

    const-string p1, "string"

    goto :goto_1

    :cond_5
    instance-of p2, p1, Landroidx/appcompat/view/menu/sg1;

    if-eqz p2, :cond_6

    const-string p1, "function"

    goto :goto_1

    :cond_6
    instance-of p2, p1, Landroidx/appcompat/view/menu/wg1;

    if-nez p2, :cond_7

    instance-of p2, p1, Landroidx/appcompat/view/menu/cg1;

    if-nez p2, :cond_7

    const-string p1, "object"

    :goto_1
    new-instance p2, Landroidx/appcompat/view/menu/ug1;

    invoke-direct {p2, p1}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Unsupported value type %s in typeof"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_3
    sget-object p1, Landroidx/appcompat/view/menu/tj1;->t0:Landroidx/appcompat/view/menu/tj1;

    const/4 v0, 0x3

    invoke-static {p1, v0, p3}, Landroidx/appcompat/view/menu/iu1;->f(Landroidx/appcompat/view/menu/tj1;ILjava/util/List;)V

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p2

    sget-object p3, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    if-eq p1, p3, :cond_a

    sget-object p3, Landroidx/appcompat/view/menu/qg1;->f:Landroidx/appcompat/view/menu/qg1;

    if-eq p1, p3, :cond_a

    instance-of p3, p1, Landroidx/appcompat/view/menu/pf1;

    if-eqz p3, :cond_8

    instance-of p3, v0, Landroidx/appcompat/view/menu/yf1;

    if-eqz p3, :cond_8

    check-cast p1, Landroidx/appcompat/view/menu/pf1;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/view/menu/pf1;->y(ILandroidx/appcompat/view/menu/qg1;)V

    goto :goto_2

    :cond_8
    instance-of p3, p1, Landroidx/appcompat/view/menu/eg1;

    if-eqz p3, :cond_9

    check-cast p1, Landroidx/appcompat/view/menu/eg1;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Landroidx/appcompat/view/menu/eg1;->n(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    :cond_9
    :goto_2
    return-object p2

    :cond_a
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Can\'t set property %s of %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_4
    sget-object p1, Landroidx/appcompat/view/menu/tj1;->k0:Landroidx/appcompat/view/menu/tj1;

    invoke-static {p1, v2, p3}, Landroidx/appcompat/view/menu/iu1;->f(Landroidx/appcompat/view/menu/tj1;ILjava/util/List;)V

    sget-object p1, Landroidx/appcompat/view/menu/qg1;->f:Landroidx/appcompat/view/menu/qg1;

    return-object p1

    :pswitch_5
    sget-object p1, Landroidx/appcompat/view/menu/tj1;->X:Landroidx/appcompat/view/menu/tj1;

    invoke-static {p1, v1, p3}, Landroidx/appcompat/view/menu/iu1;->f(Landroidx/appcompat/view/menu/tj1;ILjava/util/List;)V

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p2

    instance-of p3, p1, Landroidx/appcompat/view/menu/pf1;

    if-eqz p3, :cond_b

    invoke-static {p2}, Landroidx/appcompat/view/menu/iu1;->l(Landroidx/appcompat/view/menu/qg1;)Z

    move-result p3

    if-eqz p3, :cond_b

    check-cast p1, Landroidx/appcompat/view/menu/pf1;

    invoke-interface {p2}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/pf1;->s(I)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of p3, p1, Landroidx/appcompat/view/menu/eg1;

    if-eqz p3, :cond_c

    check-cast p1, Landroidx/appcompat/view/menu/eg1;

    invoke-interface {p2}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/eg1;->h(Ljava/lang/String;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    return-object p1

    :cond_c
    instance-of p3, p1, Landroidx/appcompat/view/menu/ug1;

    if-eqz p3, :cond_e

    invoke-interface {p2}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p3

    const-string v0, "length"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    new-instance p2, Landroidx/appcompat/view/menu/yf1;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    return-object p2

    :cond_d
    invoke-static {p2}, Landroidx/appcompat/view/menu/iu1;->l(Landroidx/appcompat/view/menu/qg1;)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-interface {p2}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    int-to-double v2, p3

    cmpg-double p3, v0, v2

    if-gez p3, :cond_e

    new-instance p3, Landroidx/appcompat/view/menu/ug1;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object p3

    :cond_e
    sget-object p1, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    return-object p1

    :pswitch_6
    sget-object p1, Landroidx/appcompat/view/menu/tj1;->U:Landroidx/appcompat/view/menu/tj1;

    invoke-static {p1, v3, p3}, Landroidx/appcompat/view/menu/iu1;->f(Landroidx/appcompat/view/menu/tj1;ILjava/util/List;)V

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    instance-of p3, p1, Landroidx/appcompat/view/menu/ug1;

    if-eqz p3, :cond_f

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pw1;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Expected string for get var. got %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_7
    sget-object p1, Landroidx/appcompat/view/menu/tj1;->L:Landroidx/appcompat/view/menu/tj1;

    invoke-static {p1, v3, p3}, Landroidx/appcompat/view/menu/iu1;->j(Landroidx/appcompat/view/menu/tj1;ILjava/util/List;)V

    sget-object p1, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_11

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    instance-of v0, p1, Landroidx/appcompat/view/menu/cg1;

    if-nez v0, :cond_10

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ControlValue cannot be in an expression list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    return-object p1

    :pswitch_8
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Landroidx/appcompat/view/menu/og1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/og1;-><init>()V

    return-object p1

    :cond_12
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr p1, v1

    if-nez p1, :cond_15

    new-instance p1, Landroidx/appcompat/view/menu/og1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/og1;-><init>()V

    :goto_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge v2, v0, :cond_14

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v1

    instance-of v4, v0, Landroidx/appcompat/view/menu/cg1;

    if-nez v4, :cond_13

    instance-of v4, v1, Landroidx/appcompat/view/menu/cg1;

    if-nez v4, :cond_13

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/og1;->n(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to evaluate map entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    return-object p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "CREATE_OBJECT requires an even number of arguments, found %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_9
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    new-instance p1, Landroidx/appcompat/view/menu/pf1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/pf1;-><init>()V

    return-object p1

    :cond_16
    new-instance p1, Landroidx/appcompat/view/menu/pf1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/pf1;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/cg1;

    if-nez v1, :cond_17

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/view/menu/pf1;->y(ILandroidx/appcompat/view/menu/qg1;)V

    move v2, v1

    goto :goto_5

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to evaluate array element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    return-object p1

    :pswitch_a
    sget-object p1, Landroidx/appcompat/view/menu/tj1;->B:Landroidx/appcompat/view/menu/tj1;

    invoke-static {p1, v1, p3}, Landroidx/appcompat/view/menu/iu1;->j(Landroidx/appcompat/view/menu/tj1;ILjava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr p1, v1

    if-nez p1, :cond_1b

    :goto_6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v3

    if-ge v2, p1, :cond_1a

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    instance-of v0, p1, Landroidx/appcompat/view/menu/ug1;

    if-eqz v0, :cond_19

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/view/menu/pw1;->f(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_6

    :cond_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Expected string for const name. got %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1a
    sget-object p1, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    return-object p1

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "CONST requires an even number of arguments, found %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b
    sget-object p1, Landroidx/appcompat/view/menu/tj1;->q:Landroidx/appcompat/view/menu/tj1;

    invoke-static {p1, v1, p3}, Landroidx/appcompat/view/menu/iu1;->f(Landroidx/appcompat/view/menu/tj1;ILjava/util/List;)V

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    instance-of v0, p1, Landroidx/appcompat/view/menu/ug1;

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/pw1;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p3

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/view/menu/pw1;->h(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    return-object p3

    :cond_1c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Attempting to assign undefined value %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Expected string for assign var. got %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
