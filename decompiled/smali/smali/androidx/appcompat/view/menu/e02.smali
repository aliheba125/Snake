.class public final Landroidx/appcompat/view/menu/e02;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Landroidx/appcompat/view/menu/e02;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/s52;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/e02;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/e02;-><init>(Z)V

    sput-object v0, Landroidx/appcompat/view/menu/e02;->d:Landroidx/appcompat/view/menu/e02;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    invoke-static {v0}, Landroidx/appcompat/view/menu/s52;->b(I)Landroidx/appcompat/view/menu/s52;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/s52;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/e02;->m()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Landroidx/appcompat/view/menu/s52;->b(I)Landroidx/appcompat/view/menu/s52;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/e02;-><init>(Landroidx/appcompat/view/menu/s52;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/e02;->m()V

    return-void
.end method

.method public static b(Landroidx/appcompat/view/menu/i02;Ljava/lang/Object;)I
    .locals 3

    invoke-interface {p0}, Landroidx/appcompat/view/menu/i02;->b()Landroidx/appcompat/view/menu/l82;

    move-result-object v0

    invoke-interface {p0}, Landroidx/appcompat/view/menu/i02;->a()I

    move-result v1

    invoke-interface {p0}, Landroidx/appcompat/view/menu/i02;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/i02;->d()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/e02;->d(Landroidx/appcompat/view/menu/l82;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroidx/appcompat/view/menu/jz1;->s0(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/jz1;->v0(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/e02;->c(Landroidx/appcompat/view/menu/l82;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/e02;->c(Landroidx/appcompat/view/menu/l82;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static c(Landroidx/appcompat/view/menu/l82;ILjava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jz1;->s0(I)I

    move-result p1

    sget-object v0, Landroidx/appcompat/view/menu/l82;->x:Landroidx/appcompat/view/menu/l82;

    if-ne p0, v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/appcompat/view/menu/w32;

    invoke-static {v0}, Landroidx/appcompat/view/menu/v02;->g(Landroidx/appcompat/view/menu/w32;)Z

    shl-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-static {p0, p2}, Landroidx/appcompat/view/menu/e02;->d(Landroidx/appcompat/view/menu/l82;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static d(Landroidx/appcompat/view/menu/l82;Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/b02;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    instance-of p0, p1, Landroidx/appcompat/view/menu/h12;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/appcompat/view/menu/h12;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/h12;->a()I

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz1;->X(I)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz1;->X(I)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/jz1;->j0(J)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz1;->o0(I)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/jz1;->f0(J)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz1;->k0(I)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz1;->v0(I)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Landroidx/appcompat/view/menu/qx1;

    if-eqz p0, :cond_1

    check-cast p1, Landroidx/appcompat/view/menu/qx1;

    invoke-static {p1}, Landroidx/appcompat/view/menu/jz1;->A(Landroidx/appcompat/view/menu/qx1;)I

    move-result p0

    return p0

    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Landroidx/appcompat/view/menu/jz1;->i([B)I

    move-result p0

    return p0

    :pswitch_7
    instance-of p0, p1, Landroidx/appcompat/view/menu/qx1;

    if-eqz p0, :cond_2

    check-cast p1, Landroidx/appcompat/view/menu/qx1;

    invoke-static {p1}, Landroidx/appcompat/view/menu/jz1;->A(Landroidx/appcompat/view/menu/qx1;)I

    move-result p0

    return p0

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/jz1;->C(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Landroidx/appcompat/view/menu/w32;

    invoke-static {p1}, Landroidx/appcompat/view/menu/jz1;->T(Landroidx/appcompat/view/menu/w32;)I

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Landroidx/appcompat/view/menu/w32;

    invoke-static {p1}, Landroidx/appcompat/view/menu/jz1;->B(Landroidx/appcompat/view/menu/w32;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz1;->h(Z)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz1;->c0(I)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/jz1;->S(J)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz1;->g0(I)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/jz1;->n0(J)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/jz1;->a0(J)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jz1;->d(F)I

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/jz1;->c(D)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static e(Ljava/util/Map$Entry;)I
    .locals 1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public static j(Landroidx/appcompat/view/menu/i02;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0}, Landroidx/appcompat/view/menu/i02;->b()Landroidx/appcompat/view/menu/l82;

    move-result-object v0

    invoke-static {p1}, Landroidx/appcompat/view/menu/v02;->e(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/appcompat/view/menu/b02;->a:[I

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l82;->c()Landroidx/appcompat/view/menu/f92;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/w32;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroidx/appcompat/view/menu/h12;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_2
    instance-of v0, p1, Landroidx/appcompat/view/menu/qx1;

    if-nez v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/i02;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Landroidx/appcompat/view/menu/i02;->b()Landroidx/appcompat/view/menu/l82;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l82;->c()Landroidx/appcompat/view/menu/f92;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method public static k(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/s52;->g()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/s52;->h(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/e02;->e(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s52;->j()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Landroidx/appcompat/view/menu/e02;->e(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Landroidx/appcompat/view/menu/e02;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/e02;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/s52;->g()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/s52;->h(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/e02;->g(Landroidx/appcompat/view/menu/i02;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/s52;->j()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/e02;->g(Landroidx/appcompat/view/menu/i02;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/e02;->c:Z

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/e02;->c:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/e02;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/e02;

    iget-object v0, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    iget-object p1, p1, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/s52;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Landroidx/appcompat/view/menu/e02;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/s52;->g()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/s52;->h(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/e02;->h(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/s52;->j()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/e02;->h(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final g(Landroidx/appcompat/view/menu/i02;Ljava/lang/Object;)V
    .locals 3

    invoke-interface {p1}, Landroidx/appcompat/view/menu/i02;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/e02;->j(Landroidx/appcompat/view/menu/i02;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/e02;->j(Landroidx/appcompat/view/menu/i02;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/s52;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h(Ljava/util/Map$Entry;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s52;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/Iterator;
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/e02;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/a22;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/s52;->m()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/a22;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s52;->m()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/util/Iterator;
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/e02;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/a22;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/s52;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/a22;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s52;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/e02;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/s52;->g()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/s52;->h(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/appcompat/view/menu/q02;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q02;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q02;->C()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s52;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/e02;->b:Z

    return-void
.end method

.method public final n()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/s52;->g()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/s52;->h(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/e02;->k(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/e02;->a:Landroidx/appcompat/view/menu/s52;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/s52;->j()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Landroidx/appcompat/view/menu/e02;->k(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
