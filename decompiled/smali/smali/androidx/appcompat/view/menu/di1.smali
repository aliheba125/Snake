.class public final Landroidx/appcompat/view/menu/di1;
.super Landroidx/appcompat/view/menu/gh1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/gh1;-><init>()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->K:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->Y:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->Z:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->a0:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->b0:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->d0:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->e0:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gh1;->a:Ljava/util/List;

    sget-object v1, Landroidx/appcompat/view/menu/tj1;->j0:Landroidx/appcompat/view/menu/tj1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z
    .locals 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    instance-of v0, p0, Landroidx/appcompat/view/menu/eh1;

    if-nez v0, :cond_7

    instance-of v0, p0, Landroidx/appcompat/view/menu/mg1;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p0, Landroidx/appcompat/view/menu/yf1;

    if-eqz v0, :cond_3

    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    :goto_1
    return v1

    :cond_3
    instance-of v0, p0, Landroidx/appcompat/view/menu/ug1;

    if-eqz v0, :cond_4

    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    instance-of v0, p0, Landroidx/appcompat/view/menu/sf1;

    if-eqz v0, :cond_5

    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->d()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->d()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    if-ne p0, p1, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v2

    :cond_8
    instance-of v0, p0, Landroidx/appcompat/view/menu/eh1;

    if-nez v0, :cond_9

    instance-of v0, p0, Landroidx/appcompat/view/menu/mg1;

    if-eqz v0, :cond_a

    :cond_9
    instance-of v0, p1, Landroidx/appcompat/view/menu/eh1;

    if-nez v0, :cond_13

    instance-of v0, p1, Landroidx/appcompat/view/menu/mg1;

    if-eqz v0, :cond_a

    goto/16 :goto_5

    :cond_a
    instance-of v0, p0, Landroidx/appcompat/view/menu/yf1;

    if-eqz v0, :cond_b

    instance-of v2, p1, Landroidx/appcompat/view/menu/ug1;

    if-eqz v2, :cond_b

    new-instance v0, Landroidx/appcompat/view/menu/yf1;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    :goto_3
    move-object p1, v0

    goto/16 :goto_0

    :cond_b
    instance-of v2, p0, Landroidx/appcompat/view/menu/ug1;

    if-eqz v2, :cond_c

    instance-of v3, p1, Landroidx/appcompat/view/menu/yf1;

    if-eqz v3, :cond_c

    new-instance v0, Landroidx/appcompat/view/menu/yf1;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    :goto_4
    move-object p0, v0

    goto/16 :goto_0

    :cond_c
    instance-of v3, p0, Landroidx/appcompat/view/menu/sf1;

    if-eqz v3, :cond_d

    new-instance v0, Landroidx/appcompat/view/menu/yf1;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    goto :goto_4

    :cond_d
    instance-of v3, p1, Landroidx/appcompat/view/menu/sf1;

    if-eqz v3, :cond_e

    new-instance v0, Landroidx/appcompat/view/menu/yf1;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    goto :goto_3

    :cond_e
    if-nez v2, :cond_f

    if-eqz v0, :cond_10

    :cond_f
    instance-of v0, p1, Landroidx/appcompat/view/menu/eg1;

    if-eqz v0, :cond_10

    new-instance v0, Landroidx/appcompat/view/menu/ug1;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    instance-of v0, p0, Landroidx/appcompat/view/menu/eg1;

    if-eqz v0, :cond_12

    instance-of v0, p1, Landroidx/appcompat/view/menu/ug1;

    if-nez v0, :cond_11

    instance-of v0, p1, Landroidx/appcompat/view/menu/yf1;

    if-eqz v0, :cond_12

    :cond_11
    new-instance v0, Landroidx/appcompat/view/menu/ug1;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_12
    return v1

    :cond_13
    :goto_5
    return v2
.end method

.method public static d(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z
    .locals 9

    instance-of v0, p0, Landroidx/appcompat/view/menu/eg1;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/ug1;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/eg1;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/ug1;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    instance-of v0, p0, Landroidx/appcompat/view/menu/ug1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    instance-of v0, p1, Landroidx/appcompat/view/menu/ug1;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    const-wide/high16 v7, -0x8000000000000000L

    if-nez v0, :cond_6

    cmpl-double v0, p0, v7

    if-eqz v0, :cond_7

    :cond_6
    cmpl-double v0, v3, v7

    if-nez v0, :cond_8

    cmpl-double v0, p0, v5

    if-nez v0, :cond_8

    :cond_7
    return v2

    :cond_8
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_9

    return v1

    :cond_9
    :goto_1
    return v2
.end method

.method public static e(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z
    .locals 4

    instance-of v0, p0, Landroidx/appcompat/view/menu/eg1;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/ug1;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/eg1;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/ug1;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    instance-of v0, p0, Landroidx/appcompat/view/menu/ug1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroidx/appcompat/view/menu/ug1;

    if-nez v0, :cond_3

    :cond_2
    invoke-interface {p0}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/di1;->d(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public final b(Ljava/lang/String;Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/view/menu/iu1;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/tj1;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p3}, Landroidx/appcompat/view/menu/iu1;->f(Landroidx/appcompat/view/menu/tj1;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p2

    sget-object p3, Landroidx/appcompat/view/menu/ji1;->a:[I

    invoke-static {p1}, Landroidx/appcompat/view/menu/iu1;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/tj1;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p3, p3, v2

    packed-switch p3, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/gh1;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/di1;->c(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z

    move-result p1

    :goto_0
    xor-int/2addr p1, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/di1;->e(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z

    move-result p1

    goto :goto_1

    :pswitch_2
    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/di1;->d(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z

    move-result p1

    goto :goto_1

    :pswitch_3
    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/iu1;->h(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z

    move-result p1

    goto :goto_0

    :pswitch_4
    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/iu1;->h(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z

    move-result p1

    goto :goto_1

    :pswitch_5
    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/di1;->e(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z

    move-result p1

    goto :goto_1

    :pswitch_6
    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/di1;->d(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z

    move-result p1

    goto :goto_1

    :pswitch_7
    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/di1;->c(Landroidx/appcompat/view/menu/qg1;Landroidx/appcompat/view/menu/qg1;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/qg1;->j:Landroidx/appcompat/view/menu/qg1;

    return-object p1

    :cond_0
    sget-object p1, Landroidx/appcompat/view/menu/qg1;->k:Landroidx/appcompat/view/menu/qg1;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
