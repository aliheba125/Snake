.class public Landroidx/appcompat/view/menu/g90;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/g90$a;,
        Landroidx/appcompat/view/menu/g90$b;
    }
.end annotation


# static fields
.field public static q:I = 0x3e8

.field public static r:Z = true

.field public static s:J

.field public static t:J


# instance fields
.field public a:I

.field public b:Ljava/util/HashMap;

.field public c:Landroidx/appcompat/view/menu/g90$a;

.field public d:I

.field public e:I

.field public f:[Landroidx/appcompat/view/menu/p4;

.field public g:Z

.field public h:Z

.field public i:[Z

.field public j:I

.field public k:I

.field public l:I

.field public final m:Landroidx/appcompat/view/menu/i9;

.field public n:[Landroidx/appcompat/view/menu/yv0;

.field public o:I

.field public p:Landroidx/appcompat/view/menu/g90$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/g90;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/g90;->b:Ljava/util/HashMap;

    const/16 v2, 0x20

    iput v2, p0, Landroidx/appcompat/view/menu/g90;->d:I

    iput v2, p0, Landroidx/appcompat/view/menu/g90;->e:I

    iput-object v1, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g90;->g:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/g90;->h:Z

    new-array v1, v2, [Z

    iput-object v1, p0, Landroidx/appcompat/view/menu/g90;->i:[Z

    const/4 v1, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/g90;->j:I

    iput v0, p0, Landroidx/appcompat/view/menu/g90;->k:I

    iput v2, p0, Landroidx/appcompat/view/menu/g90;->l:I

    sget v1, Landroidx/appcompat/view/menu/g90;->q:I

    new-array v1, v1, [Landroidx/appcompat/view/menu/yv0;

    iput-object v1, p0, Landroidx/appcompat/view/menu/g90;->n:[Landroidx/appcompat/view/menu/yv0;

    iput v0, p0, Landroidx/appcompat/view/menu/g90;->o:I

    new-array v0, v2, [Landroidx/appcompat/view/menu/p4;

    iput-object v0, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->C()V

    new-instance v0, Landroidx/appcompat/view/menu/i9;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/i9;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    new-instance v1, Landroidx/appcompat/view/menu/uj0;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/uj0;-><init>(Landroidx/appcompat/view/menu/i9;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/g90;->c:Landroidx/appcompat/view/menu/g90$a;

    sget-boolean v1, Landroidx/appcompat/view/menu/g90;->r:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/g90$b;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/menu/g90$b;-><init>(Landroidx/appcompat/view/menu/g90;Landroidx/appcompat/view/menu/i9;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/g90;->p:Landroidx/appcompat/view/menu/g90$a;

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/p4;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/p4;-><init>(Landroidx/appcompat/view/menu/i9;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/g90;->p:Landroidx/appcompat/view/menu/g90$a;

    :goto_0
    return-void
.end method

.method public static s(Landroidx/appcompat/view/menu/g90;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;F)Landroidx/appcompat/view/menu/p4;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/p4;->j(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;F)Landroidx/appcompat/view/menu/p4;

    move-result-object p0

    return-object p0
.end method

.method public static w()Landroidx/appcompat/view/menu/pd0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public A(Landroidx/appcompat/view/menu/g90$a;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g90;->u(Landroidx/appcompat/view/menu/g90$a;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/g90;->B(Landroidx/appcompat/view/menu/g90$a;Z)I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->n()V

    return-void
.end method

.method public final B(Landroidx/appcompat/view/menu/g90$a;Z)I
    .locals 10

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget v1, p0, Landroidx/appcompat/view/menu/g90;->j:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->i:[Z

    aput-boolean p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    move v1, v0

    :cond_1
    :goto_1
    if-nez v0, :cond_b

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/appcompat/view/menu/g90;->j:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Landroidx/appcompat/view/menu/g90$a;->getKey()Landroidx/appcompat/view/menu/yv0;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/view/menu/g90;->i:[Z

    invoke-interface {p1}, Landroidx/appcompat/view/menu/g90$a;->getKey()Landroidx/appcompat/view/menu/yv0;

    move-result-object v4

    iget v4, v4, Landroidx/appcompat/view/menu/yv0;->c:I

    aput-boolean v3, v2, v4

    :cond_3
    iget-object v2, p0, Landroidx/appcompat/view/menu/g90;->i:[Z

    invoke-interface {p1, p0, v2}, Landroidx/appcompat/view/menu/g90$a;->c(Landroidx/appcompat/view/menu/g90;[Z)Landroidx/appcompat/view/menu/yv0;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v4, p0, Landroidx/appcompat/view/menu/g90;->i:[Z

    iget v5, v2, Landroidx/appcompat/view/menu/yv0;->c:I

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_4

    return v1

    :cond_4
    aput-boolean v3, v4, v5

    :cond_5
    if-eqz v2, :cond_a

    const/4 v3, -0x1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move v5, p2

    move v6, v3

    :goto_2
    iget v7, p0, Landroidx/appcompat/view/menu/g90;->k:I

    if-ge v5, v7, :cond_9

    iget-object v7, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    aget-object v7, v7, v5

    iget-object v8, v7, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    iget-object v8, v8, Landroidx/appcompat/view/menu/yv0;->j:Landroidx/appcompat/view/menu/yv0$a;

    sget-object v9, Landroidx/appcompat/view/menu/yv0$a;->m:Landroidx/appcompat/view/menu/yv0$a;

    if-ne v8, v9, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v8, v7, Landroidx/appcompat/view/menu/p4;->f:Z

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v7, v2}, Landroidx/appcompat/view/menu/p4;->t(Landroidx/appcompat/view/menu/yv0;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v7, Landroidx/appcompat/view/menu/p4;->e:Landroidx/appcompat/view/menu/p4$a;

    invoke-interface {v8, v2}, Landroidx/appcompat/view/menu/p4$a;->g(Landroidx/appcompat/view/menu/yv0;)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_8

    iget v7, v7, Landroidx/appcompat/view/menu/p4;->b:F

    neg-float v7, v7

    div-float/2addr v7, v8

    cmpg-float v8, v7, v4

    if-gez v8, :cond_8

    move v6, v5

    move v4, v7

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    if-le v6, v3, :cond_1

    iget-object v4, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    aget-object v4, v4, v6

    iget-object v5, v4, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    iput v3, v5, Landroidx/appcompat/view/menu/yv0;->d:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/p4;->y(Landroidx/appcompat/view/menu/yv0;)V

    iget-object v2, v4, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    iput v6, v2, Landroidx/appcompat/view/menu/yv0;->d:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/yv0;->g(Landroidx/appcompat/view/menu/p4;)V

    goto :goto_1

    :cond_a
    move v0, v3

    goto/16 :goto_1

    :cond_b
    return v1
.end method

.method public final C()V
    .locals 4

    sget-boolean v0, Landroidx/appcompat/view/menu/g90;->r:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v3, v3, Landroidx/appcompat/view/menu/i9;->a:Landroidx/appcompat/view/menu/fj0;

    invoke-interface {v3, v0}, Landroidx/appcompat/view/menu/fj0;->a(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v3, v3, Landroidx/appcompat/view/menu/i9;->b:Landroidx/appcompat/view/menu/fj0;

    invoke-interface {v3, v0}, Landroidx/appcompat/view/menu/fj0;->a(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public D()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v3, v2, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/yv0;->d()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Landroidx/appcompat/view/menu/i9;->c:Landroidx/appcompat/view/menu/fj0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/g90;->n:[Landroidx/appcompat/view/menu/yv0;

    iget v3, p0, Landroidx/appcompat/view/menu/g90;->o:I

    invoke-interface {v1, v2, v3}, Landroidx/appcompat/view/menu/fj0;->c([Ljava/lang/Object;I)V

    iput v0, p0, Landroidx/appcompat/view/menu/g90;->o:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v1, v1, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_2
    iput v0, p0, Landroidx/appcompat/view/menu/g90;->a:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->c:Landroidx/appcompat/view/menu/g90$a;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/g90$a;->clear()V

    const/4 v1, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/g90;->j:I

    move v1, v0

    :goto_1
    iget v2, p0, Landroidx/appcompat/view/menu/g90;->k:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroidx/appcompat/view/menu/p4;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->C()V

    iput v0, p0, Landroidx/appcompat/view/menu/g90;->k:I

    sget-boolean v0, Landroidx/appcompat/view/menu/g90;->r:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/appcompat/view/menu/g90$b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/g90$b;-><init>(Landroidx/appcompat/view/menu/g90;Landroidx/appcompat/view/menu/i9;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/g90;->p:Landroidx/appcompat/view/menu/g90$a;

    goto :goto_2

    :cond_4
    new-instance v0, Landroidx/appcompat/view/menu/p4;

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/p4;-><init>(Landroidx/appcompat/view/menu/i9;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/g90;->p:Landroidx/appcompat/view/menu/g90$a;

    :goto_2
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/yv0$a;Ljava/lang/String;)Landroidx/appcompat/view/menu/yv0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v0, v0, Landroidx/appcompat/view/menu/i9;->c:Landroidx/appcompat/view/menu/fj0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/fj0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/yv0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/yv0;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/view/menu/yv0;-><init>(Landroidx/appcompat/view/menu/yv0$a;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/yv0;->f(Landroidx/appcompat/view/menu/yv0$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yv0;->d()V

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/yv0;->f(Landroidx/appcompat/view/menu/yv0$a;Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Landroidx/appcompat/view/menu/g90;->o:I

    sget p2, Landroidx/appcompat/view/menu/g90;->q:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    sput p2, Landroidx/appcompat/view/menu/g90;->q:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/g90;->n:[Landroidx/appcompat/view/menu/yv0;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/appcompat/view/menu/yv0;

    iput-object p1, p0, Landroidx/appcompat/view/menu/g90;->n:[Landroidx/appcompat/view/menu/yv0;

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/g90;->n:[Landroidx/appcompat/view/menu/yv0;

    iget p2, p0, Landroidx/appcompat/view/menu/g90;->o:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/g90;->o:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public b(Landroidx/appcompat/view/menu/mf;Landroidx/appcompat/view/menu/mf;FI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Landroidx/appcompat/view/menu/kf$b;->n:Landroidx/appcompat/view/menu/kf$b;

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/mf;->m(Landroidx/appcompat/view/menu/kf$b;)Landroidx/appcompat/view/menu/kf;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/g90;->q(Ljava/lang/Object;)Landroidx/appcompat/view/menu/yv0;

    move-result-object v6

    sget-object v4, Landroidx/appcompat/view/menu/kf$b;->o:Landroidx/appcompat/view/menu/kf$b;

    invoke-virtual {v1, v4}, Landroidx/appcompat/view/menu/mf;->m(Landroidx/appcompat/view/menu/kf$b;)Landroidx/appcompat/view/menu/kf;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/appcompat/view/menu/g90;->q(Ljava/lang/Object;)Landroidx/appcompat/view/menu/yv0;

    move-result-object v8

    sget-object v5, Landroidx/appcompat/view/menu/kf$b;->p:Landroidx/appcompat/view/menu/kf$b;

    invoke-virtual {v1, v5}, Landroidx/appcompat/view/menu/mf;->m(Landroidx/appcompat/view/menu/kf$b;)Landroidx/appcompat/view/menu/kf;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/appcompat/view/menu/g90;->q(Ljava/lang/Object;)Landroidx/appcompat/view/menu/yv0;

    move-result-object v13

    sget-object v7, Landroidx/appcompat/view/menu/kf$b;->q:Landroidx/appcompat/view/menu/kf$b;

    invoke-virtual {v1, v7}, Landroidx/appcompat/view/menu/mf;->m(Landroidx/appcompat/view/menu/kf$b;)Landroidx/appcompat/view/menu/kf;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g90;->q(Ljava/lang/Object;)Landroidx/appcompat/view/menu/yv0;

    move-result-object v9

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/mf;->m(Landroidx/appcompat/view/menu/kf$b;)Landroidx/appcompat/view/menu/kf;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g90;->q(Ljava/lang/Object;)Landroidx/appcompat/view/menu/yv0;

    move-result-object v1

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/mf;->m(Landroidx/appcompat/view/menu/kf$b;)Landroidx/appcompat/view/menu/kf;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/g90;->q(Ljava/lang/Object;)Landroidx/appcompat/view/menu/yv0;

    move-result-object v10

    invoke-virtual {v2, v5}, Landroidx/appcompat/view/menu/mf;->m(Landroidx/appcompat/view/menu/kf$b;)Landroidx/appcompat/view/menu/kf;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/g90;->q(Ljava/lang/Object;)Landroidx/appcompat/view/menu/yv0;

    move-result-object v3

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/mf;->m(Landroidx/appcompat/view/menu/kf$b;)Landroidx/appcompat/view/menu/kf;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/g90;->q(Ljava/lang/Object;)Landroidx/appcompat/view/menu/yv0;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move/from16 v7, p4

    move-object/from16 p1, v3

    move-wide/from16 p2, v4

    int-to-double v3, v7

    mul-double/2addr v14, v3

    double-to-float v12, v14

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Landroidx/appcompat/view/menu/p4;->q(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;F)Landroidx/appcompat/view/menu/p4;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/g90;->d(Landroidx/appcompat/view/menu/p4;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object v2

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    double-to-float v10, v7

    move-object v5, v2

    move-object v7, v13

    move-object v8, v1

    move-object/from16 v9, p1

    invoke-virtual/range {v5 .. v10}, Landroidx/appcompat/view/menu/p4;->q(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;F)Landroidx/appcompat/view/menu/p4;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/g90;->d(Landroidx/appcompat/view/menu/p4;)V

    return-void
.end method

.method public c(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;IFLandroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Landroidx/appcompat/view/menu/p4;->h(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;IFLandroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;I)Landroidx/appcompat/view/menu/p4;

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v10, p0, v1}, Landroidx/appcompat/view/menu/p4;->d(Landroidx/appcompat/view/menu/g90;I)Landroidx/appcompat/view/menu/p4;

    :cond_0
    invoke-virtual {p0, v10}, Landroidx/appcompat/view/menu/g90;->d(Landroidx/appcompat/view/menu/p4;)V

    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/p4;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/g90;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Landroidx/appcompat/view/menu/g90;->l:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Landroidx/appcompat/view/menu/g90;->j:I

    add-int/2addr v0, v1

    iget v2, p0, Landroidx/appcompat/view/menu/g90;->e:I

    if-lt v0, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->y()V

    :cond_2
    iget-boolean v0, p1, Landroidx/appcompat/view/menu/p4;->f:Z

    if-nez v0, :cond_9

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/p4;->D(Landroidx/appcompat/view/menu/g90;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p4;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p4;->r()V

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/p4;->f(Landroidx/appcompat/view/menu/g90;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->p()Landroidx/appcompat/view/menu/yv0;

    move-result-object v0

    iput-object v0, p1, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g90;->l(Landroidx/appcompat/view/menu/p4;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/g90;->p:Landroidx/appcompat/view/menu/g90$a;

    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/g90$a;->b(Landroidx/appcompat/view/menu/g90$a;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/g90;->p:Landroidx/appcompat/view/menu/g90$a;

    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/view/menu/g90;->B(Landroidx/appcompat/view/menu/g90$a;Z)I

    iget v2, v0, Landroidx/appcompat/view/menu/yv0;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    if-ne v2, v0, :cond_4

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p4;->w(Landroidx/appcompat/view/menu/yv0;)Landroidx/appcompat/view/menu/yv0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p4;->y(Landroidx/appcompat/view/menu/yv0;)V

    :cond_4
    iget-boolean v0, p1, Landroidx/appcompat/view/menu/p4;->f:Z

    if-nez v0, :cond_5

    iget-object v0, p1, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/yv0;->g(Landroidx/appcompat/view/menu/p4;)V

    :cond_5
    iget v0, p0, Landroidx/appcompat/view/menu/g90;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/view/menu/g90;->k:I

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p4;->s()Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    if-nez v1, :cond_a

    :cond_9
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g90;->l(Landroidx/appcompat/view/menu/p4;)V

    :cond_a
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;II)Landroidx/appcompat/view/menu/p4;
    .locals 3

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    iget-boolean v1, p2, Landroidx/appcompat/view/menu/yv0;->g:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/appcompat/view/menu/yv0;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget p2, p2, Landroidx/appcompat/view/menu/yv0;->f:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/view/menu/yv0;->e(Landroidx/appcompat/view/menu/g90;F)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroidx/appcompat/view/menu/p4;->n(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;I)Landroidx/appcompat/view/menu/p4;

    if-eq p4, v0, :cond_1

    invoke-virtual {v1, p0, p4}, Landroidx/appcompat/view/menu/p4;->d(Landroidx/appcompat/view/menu/g90;I)Landroidx/appcompat/view/menu/p4;

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/g90;->d(Landroidx/appcompat/view/menu/p4;)V

    return-object v1
.end method

.method public f(Landroidx/appcompat/view/menu/yv0;I)V
    .locals 2

    iget v0, p1, Landroidx/appcompat/view/menu/yv0;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/view/menu/yv0;->e(Landroidx/appcompat/view/menu/g90;F)V

    return-void

    :cond_0
    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    aget-object v0, v1, v0

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/p4;->f:Z

    if-eqz v1, :cond_1

    int-to-float p1, p2

    iput p1, v0, Landroidx/appcompat/view/menu/p4;->b:F

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/appcompat/view/menu/p4;->e:Landroidx/appcompat/view/menu/p4$a;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/p4$a;->e()I

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/view/menu/p4;->f:Z

    int-to-float p1, p2

    iput p1, v0, Landroidx/appcompat/view/menu/p4;->b:F

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/p4;->m(Landroidx/appcompat/view/menu/yv0;I)Landroidx/appcompat/view/menu/p4;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g90;->d(Landroidx/appcompat/view/menu/p4;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/p4;->i(Landroidx/appcompat/view/menu/yv0;I)Landroidx/appcompat/view/menu/p4;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g90;->d(Landroidx/appcompat/view/menu/p4;)V

    :goto_0
    return-void
.end method

.method public g(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;IZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object p4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->t()Landroidx/appcompat/view/menu/yv0;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroidx/appcompat/view/menu/yv0;->e:I

    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/appcompat/view/menu/p4;->o(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;I)Landroidx/appcompat/view/menu/p4;

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/g90;->d(Landroidx/appcompat/view/menu/p4;)V

    return-void
.end method

.method public h(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;II)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->t()Landroidx/appcompat/view/menu/yv0;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/view/menu/yv0;->e:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/appcompat/view/menu/p4;->o(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;I)Landroidx/appcompat/view/menu/p4;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Landroidx/appcompat/view/menu/p4;->e:Landroidx/appcompat/view/menu/p4$a;

    invoke-interface {p1, v1}, Landroidx/appcompat/view/menu/p4$a;->g(Landroidx/appcompat/view/menu/yv0;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Landroidx/appcompat/view/menu/g90;->m(Landroidx/appcompat/view/menu/p4;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g90;->d(Landroidx/appcompat/view/menu/p4;)V

    return-void
.end method

.method public i(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;IZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object p4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->t()Landroidx/appcompat/view/menu/yv0;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroidx/appcompat/view/menu/yv0;->e:I

    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/appcompat/view/menu/p4;->p(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;I)Landroidx/appcompat/view/menu/p4;

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/g90;->d(Landroidx/appcompat/view/menu/p4;)V

    return-void
.end method

.method public j(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;II)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->t()Landroidx/appcompat/view/menu/yv0;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/appcompat/view/menu/yv0;->e:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/appcompat/view/menu/p4;->p(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;I)Landroidx/appcompat/view/menu/p4;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Landroidx/appcompat/view/menu/p4;->e:Landroidx/appcompat/view/menu/p4$a;

    invoke-interface {p1, v1}, Landroidx/appcompat/view/menu/p4$a;->g(Landroidx/appcompat/view/menu/yv0;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Landroidx/appcompat/view/menu/g90;->m(Landroidx/appcompat/view/menu/p4;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g90;->d(Landroidx/appcompat/view/menu/p4;)V

    return-void
.end method

.method public k(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;FI)V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->r()Landroidx/appcompat/view/menu/p4;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/p4;->k(Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;Landroidx/appcompat/view/menu/yv0;F)Landroidx/appcompat/view/menu/p4;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    invoke-virtual {v6, p0, p6}, Landroidx/appcompat/view/menu/p4;->d(Landroidx/appcompat/view/menu/g90;I)Landroidx/appcompat/view/menu/p4;

    :cond_0
    invoke-virtual {p0, v6}, Landroidx/appcompat/view/menu/g90;->d(Landroidx/appcompat/view/menu/p4;)V

    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/p4;)V
    .locals 2

    sget-boolean v0, Landroidx/appcompat/view/menu/g90;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    iget v1, p0, Landroidx/appcompat/view/menu/g90;->k:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v1, v1, Landroidx/appcompat/view/menu/i9;->a:Landroidx/appcompat/view/menu/fj0;

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/fj0;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    iget v1, p0, Landroidx/appcompat/view/menu/g90;->k:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v1, v1, Landroidx/appcompat/view/menu/i9;->b:Landroidx/appcompat/view/menu/fj0;

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/fj0;->a(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    iget v1, p0, Landroidx/appcompat/view/menu/g90;->k:I

    aput-object p1, v0, v1

    iget-object v0, p1, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    iput v1, v0, Landroidx/appcompat/view/menu/yv0;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/g90;->k:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/yv0;->g(Landroidx/appcompat/view/menu/p4;)V

    return-void
.end method

.method public m(Landroidx/appcompat/view/menu/p4;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroidx/appcompat/view/menu/g90;->o(ILjava/lang/String;)Landroidx/appcompat/view/menu/yv0;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/view/menu/p4;->e(Landroidx/appcompat/view/menu/yv0;I)Landroidx/appcompat/view/menu/p4;

    return-void
.end method

.method public final n()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/appcompat/view/menu/g90;->k:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    aget-object v1, v1, v0

    iget-object v2, v1, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    iget v1, v1, Landroidx/appcompat/view/menu/p4;->b:F

    iput v1, v2, Landroidx/appcompat/view/menu/yv0;->f:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(ILjava/lang/String;)Landroidx/appcompat/view/menu/yv0;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/g90;->j:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/appcompat/view/menu/g90;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->y()V

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/yv0$a;->p:Landroidx/appcompat/view/menu/yv0$a;

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/g90;->a(Landroidx/appcompat/view/menu/yv0$a;Ljava/lang/String;)Landroidx/appcompat/view/menu/yv0;

    move-result-object p2

    iget v0, p0, Landroidx/appcompat/view/menu/g90;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/g90;->a:I

    iget v1, p0, Landroidx/appcompat/view/menu/g90;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/g90;->j:I

    iput v0, p2, Landroidx/appcompat/view/menu/yv0;->c:I

    iput p1, p2, Landroidx/appcompat/view/menu/yv0;->e:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object p1, p1, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    aput-object p2, p1, v0

    iget-object p1, p0, Landroidx/appcompat/view/menu/g90;->c:Landroidx/appcompat/view/menu/g90$a;

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/g90$a;->a(Landroidx/appcompat/view/menu/yv0;)V

    return-object p2
.end method

.method public p()Landroidx/appcompat/view/menu/yv0;
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/g90;->j:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/appcompat/view/menu/g90;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->y()V

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/yv0$a;->o:Landroidx/appcompat/view/menu/yv0$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/g90;->a(Landroidx/appcompat/view/menu/yv0$a;Ljava/lang/String;)Landroidx/appcompat/view/menu/yv0;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/g90;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/g90;->a:I

    iget v2, p0, Landroidx/appcompat/view/menu/g90;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/appcompat/view/menu/g90;->j:I

    iput v1, v0, Landroidx/appcompat/view/menu/yv0;->c:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v2, v2, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public q(Ljava/lang/Object;)Landroidx/appcompat/view/menu/yv0;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Landroidx/appcompat/view/menu/g90;->j:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/appcompat/view/menu/g90;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->y()V

    :cond_1
    instance-of v1, p1, Landroidx/appcompat/view/menu/kf;

    if-eqz v1, :cond_5

    check-cast p1, Landroidx/appcompat/view/menu/kf;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/kf;->f()Landroidx/appcompat/view/menu/yv0;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/kf;->m(Landroidx/appcompat/view/menu/i9;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/kf;->f()Landroidx/appcompat/view/menu/yv0;

    move-result-object p1

    move-object v0, p1

    :cond_2
    iget p1, v0, Landroidx/appcompat/view/menu/yv0;->c:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v2, p0, Landroidx/appcompat/view/menu/g90;->a:I

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v2, v2, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    aget-object v2, v2, p1

    if-nez v2, :cond_5

    :cond_3
    if-eq p1, v1, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yv0;->d()V

    :cond_4
    iget p1, p0, Landroidx/appcompat/view/menu/g90;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/appcompat/view/menu/g90;->a:I

    iget v1, p0, Landroidx/appcompat/view/menu/g90;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/g90;->j:I

    iput p1, v0, Landroidx/appcompat/view/menu/yv0;->c:I

    sget-object v1, Landroidx/appcompat/view/menu/yv0$a;->m:Landroidx/appcompat/view/menu/yv0$a;

    iput-object v1, v0, Landroidx/appcompat/view/menu/yv0;->j:Landroidx/appcompat/view/menu/yv0$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v1, v1, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public r()Landroidx/appcompat/view/menu/p4;
    .locals 5

    sget-boolean v0, Landroidx/appcompat/view/menu/g90;->r:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v0, v0, Landroidx/appcompat/view/menu/i9;->a:Landroidx/appcompat/view/menu/fj0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/fj0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/p4;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/g90$b;

    iget-object v3, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    invoke-direct {v0, p0, v3}, Landroidx/appcompat/view/menu/g90$b;-><init>(Landroidx/appcompat/view/menu/g90;Landroidx/appcompat/view/menu/i9;)V

    sget-wide v3, Landroidx/appcompat/view/menu/g90;->t:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/appcompat/view/menu/g90;->t:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p4;->z()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v0, v0, Landroidx/appcompat/view/menu/i9;->b:Landroidx/appcompat/view/menu/fj0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/fj0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/p4;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/appcompat/view/menu/p4;

    iget-object v3, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    invoke-direct {v0, v3}, Landroidx/appcompat/view/menu/p4;-><init>(Landroidx/appcompat/view/menu/i9;)V

    sget-wide v3, Landroidx/appcompat/view/menu/g90;->s:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/appcompat/view/menu/g90;->s:J

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p4;->z()V

    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/yv0;->b()V

    return-object v0
.end method

.method public t()Landroidx/appcompat/view/menu/yv0;
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/g90;->j:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/appcompat/view/menu/g90;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->y()V

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/yv0$a;->o:Landroidx/appcompat/view/menu/yv0$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/g90;->a(Landroidx/appcompat/view/menu/yv0$a;Ljava/lang/String;)Landroidx/appcompat/view/menu/yv0;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/g90;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/g90;->a:I

    iget v2, p0, Landroidx/appcompat/view/menu/g90;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/appcompat/view/menu/g90;->j:I

    iput v1, v0, Landroidx/appcompat/view/menu/yv0;->c:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v2, v2, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final u(Landroidx/appcompat/view/menu/g90$a;)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Landroidx/appcompat/view/menu/g90;->k:I

    if-ge v2, v3, :cond_e

    iget-object v3, v0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    aget-object v3, v3, v2

    iget-object v4, v3, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    iget-object v4, v4, Landroidx/appcompat/view/menu/yv0;->j:Landroidx/appcompat/view/menu/yv0$a;

    sget-object v5, Landroidx/appcompat/view/menu/yv0$a;->m:Landroidx/appcompat/view/menu/yv0$a;

    if-ne v4, v5, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v3, v3, Landroidx/appcompat/view/menu/p4;->b:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-nez v2, :cond_c

    add-int/lit8 v3, v3, 0x1

    const/4 v5, -0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    move v8, v5

    move v9, v8

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_2
    iget v11, v0, Landroidx/appcompat/view/menu/g90;->k:I

    const/4 v12, 0x1

    if-ge v7, v11, :cond_a

    iget-object v11, v0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    aget-object v11, v11, v7

    iget-object v13, v11, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    iget-object v13, v13, Landroidx/appcompat/view/menu/yv0;->j:Landroidx/appcompat/view/menu/yv0$a;

    sget-object v14, Landroidx/appcompat/view/menu/yv0$a;->m:Landroidx/appcompat/view/menu/yv0$a;

    if-ne v13, v14, :cond_2

    goto :goto_6

    :cond_2
    iget-boolean v13, v11, Landroidx/appcompat/view/menu/p4;->f:Z

    if-eqz v13, :cond_3

    goto :goto_6

    :cond_3
    iget v13, v11, Landroidx/appcompat/view/menu/p4;->b:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_9

    :goto_3
    iget v13, v0, Landroidx/appcompat/view/menu/g90;->j:I

    if-ge v12, v13, :cond_9

    iget-object v13, v0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v13, v13, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    aget-object v13, v13, v12

    iget-object v14, v11, Landroidx/appcompat/view/menu/p4;->e:Landroidx/appcompat/view/menu/p4$a;

    invoke-interface {v14, v13}, Landroidx/appcompat/view/menu/p4$a;->g(Landroidx/appcompat/view/menu/yv0;)F

    move-result v14

    cmpg-float v15, v14, v4

    if-gtz v15, :cond_4

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    :goto_4
    const/16 v1, 0x9

    if-ge v15, v1, :cond_8

    iget-object v1, v13, Landroidx/appcompat/view/menu/yv0;->h:[F

    aget v1, v1, v15

    div-float/2addr v1, v14

    cmpg-float v16, v1, v6

    if-gez v16, :cond_5

    if-eq v15, v10, :cond_6

    :cond_5
    if-le v15, v10, :cond_7

    :cond_6
    move v6, v1

    move v8, v7

    move v9, v12

    move v10, v15

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    if-eq v8, v5, :cond_b

    iget-object v1, v0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    aget-object v1, v1, v8

    iget-object v6, v1, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    iput v5, v6, Landroidx/appcompat/view/menu/yv0;->d:I

    iget-object v5, v0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v5, v5, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    aget-object v5, v5, v9

    invoke-virtual {v1, v5}, Landroidx/appcompat/view/menu/p4;->y(Landroidx/appcompat/view/menu/yv0;)V

    iget-object v5, v1, Landroidx/appcompat/view/menu/p4;->a:Landroidx/appcompat/view/menu/yv0;

    iput v8, v5, Landroidx/appcompat/view/menu/yv0;->d:I

    invoke-virtual {v5, v1}, Landroidx/appcompat/view/menu/yv0;->g(Landroidx/appcompat/view/menu/p4;)V

    goto :goto_7

    :cond_b
    move v2, v12

    :goto_7
    iget v1, v0, Landroidx/appcompat/view/menu/g90;->j:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_1

    move v2, v12

    goto/16 :goto_1

    :cond_c
    move v1, v3

    goto :goto_9

    :cond_d
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public v()Landroidx/appcompat/view/menu/i9;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    return-object v0
.end method

.method public x(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroidx/appcompat/view/menu/kf;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/kf;->f()Landroidx/appcompat/view/menu/yv0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroidx/appcompat/view/menu/yv0;->f:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final y()V
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/g90;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/view/menu/g90;->d:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/p4;

    iput-object v0, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->m:Landroidx/appcompat/view/menu/i9;

    iget-object v1, v0, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    iget v2, p0, Landroidx/appcompat/view/menu/g90;->d:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/appcompat/view/menu/yv0;

    iput-object v1, v0, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    iget v0, p0, Landroidx/appcompat/view/menu/g90;->d:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/appcompat/view/menu/g90;->i:[Z

    iput v0, p0, Landroidx/appcompat/view/menu/g90;->e:I

    iput v0, p0, Landroidx/appcompat/view/menu/g90;->l:I

    return-void
.end method

.method public z()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g90;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g90;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->c:Landroidx/appcompat/view/menu/g90$a;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g90;->A(Landroidx/appcompat/view/menu/g90$a;)V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/appcompat/view/menu/g90;->k:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/g90;->f:[Landroidx/appcompat/view/menu/p4;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/p4;->f:Z

    if-nez v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/g90;->c:Landroidx/appcompat/view/menu/g90$a;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/g90;->A(Landroidx/appcompat/view/menu/g90$a;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g90;->n()V

    :goto_2
    return-void
.end method
