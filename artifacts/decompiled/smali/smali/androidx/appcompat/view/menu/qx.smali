.class public abstract Landroidx/appcompat/view/menu/qx;
.super Landroidx/appcompat/view/menu/z7;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m2$f;


# instance fields
.field public final Q:Landroidx/appcompat/view/menu/ac;

.field public final R:Ljava/util/Set;

.field public final S:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILandroidx/appcompat/view/menu/ac;Landroidx/appcompat/view/menu/df;Landroidx/appcompat/view/menu/hg0;)V
    .locals 9

    .line 2
    invoke-static {p1}, Landroidx/appcompat/view/menu/rx;->b(Landroid/content/Context;)Landroidx/appcompat/view/menu/rx;

    move-result-object v3

    .line 3
    invoke-static {}, Landroidx/appcompat/view/menu/xx;->m()Landroidx/appcompat/view/menu/xx;

    move-result-object v4

    .line 4
    invoke-static {p5}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Landroidx/appcompat/view/menu/df;

    .line 5
    invoke-static {p6}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v8, p5

    check-cast v8, Landroidx/appcompat/view/menu/hg0;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v0 .. v8}, Landroidx/appcompat/view/menu/qx;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/rx;Landroidx/appcompat/view/menu/xx;ILandroidx/appcompat/view/menu/ac;Landroidx/appcompat/view/menu/df;Landroidx/appcompat/view/menu/hg0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILandroidx/appcompat/view/menu/ac;Landroidx/appcompat/view/menu/zx$a;Landroidx/appcompat/view/menu/zx$b;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/appcompat/view/menu/qx;-><init>(Landroid/content/Context;Landroid/os/Looper;ILandroidx/appcompat/view/menu/ac;Landroidx/appcompat/view/menu/df;Landroidx/appcompat/view/menu/hg0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/rx;Landroidx/appcompat/view/menu/xx;ILandroidx/appcompat/view/menu/ac;Landroidx/appcompat/view/menu/df;Landroidx/appcompat/view/menu/hg0;)V
    .locals 10

    move-object v9, p0

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v6, v2

    goto :goto_0

    .line 7
    :cond_0
    new-instance v3, Landroidx/appcompat/view/menu/dd1;

    invoke-direct {v3, v0}, Landroidx/appcompat/view/menu/dd1;-><init>(Landroidx/appcompat/view/menu/df;)V

    move-object v6, v3

    :goto_0
    if-nez v1, :cond_1

    move-object v7, v2

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/gd1;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/gd1;-><init>(Landroidx/appcompat/view/menu/hg0;)V

    move-object v7, v0

    .line 9
    :goto_1
    invoke-virtual/range {p6 .. p6}, Landroidx/appcompat/view/menu/ac;->h()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 10
    invoke-direct/range {v0 .. v8}, Landroidx/appcompat/view/menu/z7;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/rx;Landroidx/appcompat/view/menu/yx;ILandroidx/appcompat/view/menu/z7$a;Landroidx/appcompat/view/menu/z7$b;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, v9, Landroidx/appcompat/view/menu/qx;->Q:Landroidx/appcompat/view/menu/ac;

    .line 11
    invoke-virtual/range {p6 .. p6}, Landroidx/appcompat/view/menu/ac;->a()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, v9, Landroidx/appcompat/view/menu/qx;->S:Landroid/accounts/Account;

    .line 12
    invoke-virtual/range {p6 .. p6}, Landroidx/appcompat/view/menu/ac;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/qx;->k0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, Landroidx/appcompat/view/menu/qx;->R:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final C()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qx;->R:Ljava/util/Set;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/qx;->R:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j0(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    return-object p1
.end method

.method public final k0(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qx;->j0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method public final u()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qx;->S:Landroid/accounts/Account;

    return-object v0
.end method

.method public final w()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
