.class public Landroidx/appcompat/view/menu/bv0;
.super Landroidx/appcompat/view/menu/f00$a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i30;
.implements Landroidx/appcompat/view/menu/bh0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/bv0$i;,
        Landroidx/appcompat/view/menu/bv0$j;,
        Landroidx/appcompat/view/menu/bv0$k;,
        Landroidx/appcompat/view/menu/bv0$l;,
        Landroidx/appcompat/view/menu/bv0$m;
    }
.end annotation


# static fields
.field public static final s:Landroidx/appcompat/view/menu/bv0;

.field public static final t:[Landroid/accounts/Account;


# instance fields
.field public final l:Landroidx/appcompat/view/menu/x6;

.field public final m:Ljava/util/Map;

.field public final n:Landroidx/appcompat/view/menu/bv0$i;

.field public final o:Ljava/util/LinkedList;

.field public final p:Ljava/util/LinkedHashMap;

.field public final q:Landroid/os/Handler;

.field public final r:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/bv0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bv0;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/bv0;->s:Landroidx/appcompat/view/menu/bv0;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    sput-object v0, Landroidx/appcompat/view/menu/bv0;->t:[Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/f00$a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    new-instance v0, Landroidx/appcompat/view/menu/bv0$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/bv0$i;-><init>(Landroidx/appcompat/view/menu/cv0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0;->n:Landroidx/appcompat/view/menu/bv0$i;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0;->o:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0;->p:Ljava/util/LinkedHashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0;->q:Landroid/os/Handler;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0;->r:Landroid/content/Context;

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/bv0;->l:Landroidx/appcompat/view/menu/x6;

    return-void
.end method

.method public static bridge synthetic A2(Landroidx/appcompat/view/menu/bv0;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/bv0;->Q2(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic B2(Landroidx/appcompat/view/menu/bv0;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/bv0;->R2(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C2(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0;->b3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D2(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0;->h3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method public static I2()Landroidx/appcompat/view/menu/bv0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/bv0;->s:Landroidx/appcompat/view/menu/bv0;

    return-object v0
.end method

.method public static W2(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .locals 8

    sget-object v0, Landroidx/appcompat/view/menu/nn0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-static {v0}, Landroidx/appcompat/view/menu/r4;->e([Ljava/lang/Integer;)[I

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    sget-object p2, Landroidx/appcompat/view/menu/nn0;->d:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object p2, Landroidx/appcompat/view/menu/nn0;->g:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sget-object p2, Landroidx/appcompat/view/menu/nn0;->f:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    sget-object p2, Landroidx/appcompat/view/menu/nn0;->h:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    sget-object p2, Landroidx/appcompat/view/menu/nn0;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    sget-object p2, Landroidx/appcompat/view/menu/nn0;->e:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    new-instance p2, Landroid/accounts/AuthenticatorDescription;

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static bridge synthetic u2(Landroidx/appcompat/view/menu/bv0;)Landroidx/appcompat/view/menu/bv0$i;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/bv0;->n:Landroidx/appcompat/view/menu/bv0$i;

    return-object p0
.end method

.method public static bridge synthetic v2(Landroidx/appcompat/view/menu/bv0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/bv0;->r:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic w2(Landroidx/appcompat/view/menu/bv0;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/bv0;->q:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic x2(Landroidx/appcompat/view/menu/bv0;)Landroidx/appcompat/view/menu/x6;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/bv0;->l:Landroidx/appcompat/view/menu/x6;

    return-object p0
.end method

.method public static bridge synthetic y2(Landroidx/appcompat/view/menu/bv0;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/bv0;->p:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static bridge synthetic z2(Landroidx/appcompat/view/menu/bv0;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Landroidx/appcompat/view/menu/c7;I)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/view/menu/bv0;->F2(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Landroidx/appcompat/view/menu/c7;I)V

    return-void
.end method


# virtual methods
.method public A1(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 10

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0;->M2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v2

    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v9, Landroidx/appcompat/view/menu/bv0$k;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Landroidx/appcompat/view/menu/bv0$k;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/bv0$m;->h()V

    return-void

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, v2, p2, v7, p3}, Landroidx/appcompat/view/menu/bv0;->L2(Landroidx/appcompat/view/menu/c7;Ljava/lang/String;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p2

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "accounts"

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/view/menu/bv0;->V2(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E0(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 1

    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p3

    const-string v0, "android:accounts:key_legacy_visible"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/bv0;->J2(Landroid/accounts/Account;Ljava/lang/String;Landroidx/appcompat/view/menu/c7;)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const-string v0, "android:accounts:key_legacy_not_visible"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/bv0;->J2(Landroid/accounts/Account;Ljava/lang/String;Landroidx/appcompat/view/menu/c7;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/bv0;->c3(Landroid/accounts/Account;Ljava/lang/String;Landroidx/appcompat/view/menu/c7;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final E2(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/c7;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/c7;-><init>()V

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/c7;->d(Landroid/accounts/Account;)Landroidx/appcompat/view/menu/zu0;

    move-result-object v1

    if-eqz v1, :cond_1

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/c7;->a(Landroid/accounts/Account;)Landroidx/appcompat/view/menu/zu0;

    move-result-object v1

    iput-object p3, v1, Landroidx/appcompat/view/menu/zu0;->n:Ljava/lang/String;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/zu0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p0, p2, p5, p4, p1}, Landroidx/appcompat/view/menu/bv0;->g3(Landroid/accounts/Account;Ljava/lang/String;ILandroidx/appcompat/view/menu/c7;)Z

    goto :goto_1

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0;->d3()V

    const/4 p1, 0x1

    return p1

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final F2(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Landroidx/appcompat/view/menu/c7;I)V
    .locals 13

    move-object/from16 v9, p3

    new-instance v12, Landroidx/appcompat/view/menu/bv0$h;

    iget-object v4, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v3, p1

    move/from16 v10, p5

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Landroidx/appcompat/view/menu/bv0$h;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/bv0$m;->h()V

    return-void
.end method

.method public G(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "Account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "AuthTokenType cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p4, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p4, p1}, Landroidx/appcompat/view/menu/c7;->i(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0;->d3()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final G2(Landroidx/appcompat/view/menu/c7;[Landroid/accounts/Account;Ljava/lang/String;Z)[Landroid/accounts/Account;
    .locals 7

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    invoke-virtual {p0, v4, p3, p1}, Landroidx/appcompat/view/menu/bv0;->c3(Landroid/accounts/Account;Ljava/lang/String;Landroidx/appcompat/view/menu/c7;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    if-eqz p4, :cond_1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    new-array p2, v2, [Landroid/accounts/Account;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1
.end method

.method public final H2(Ljava/util/List;Ljava/util/Map;Landroidx/appcompat/view/menu/ho0;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0;->r:Landroid/content/Context;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v3, "android.accounts.AccountAuthenticator"

    invoke-virtual {p3, v1, v2, v3}, Landroidx/appcompat/view/menu/ho0;->a(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const-string v3, "account-authenticator"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0;->r:Landroid/content/Context;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3, v1, v3}, Landroidx/appcompat/view/menu/ho0;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Landroidx/appcompat/view/menu/bv0;->W2(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    new-instance v3, Landroidx/appcompat/view/menu/bv0$j;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v3, v1, v0}, Landroidx/appcompat/view/menu/bv0$j;-><init>(Landroid/accounts/AuthenticatorDescription;Landroid/content/pm/ServiceInfo;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public I1(Ljava/lang/String;I)[Landroid/accounts/Account;
    .locals 4

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p2, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/c7;->o:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/zu0;

    iget-object v3, v2, Landroidx/appcompat/view/menu/zu0;->m:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroidx/appcompat/view/menu/zu0;->m:Landroid/accounts/Account;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/accounts/Account;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public J1(Landroid/accounts/Account;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/bv0;->y1(Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void
.end method

.method public final J2(Landroid/accounts/Account;Ljava/lang/String;Landroidx/appcompat/view/menu/c7;)I
    .locals 1

    iget-object v0, p3, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/view/menu/bv0;->O2(Landroid/accounts/Account;Landroidx/appcompat/view/menu/c7;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public K1(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 0

    return-void
.end method

.method public K2(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/c7;->o:Ljava/util/List;

    const/4 p2, 0x0

    new-array p2, p2, [Landroid/accounts/Account;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1
.end method

.method public L2(Landroidx/appcompat/view/menu/c7;Ljava/lang/String;Ljava/lang/String;Z)[Landroid/accounts/Account;
    .locals 6

    if-eqz p2, :cond_1

    iget-object v0, p1, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/c7;->f(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/bv0;->t:[Landroid/accounts/Account;

    return-object p1

    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/accounts/Account;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/bv0;->G2(Landroidx/appcompat/view/menu/c7;[Landroid/accounts/Account;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    monitor-enter p2

    :try_start_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/c7;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/c7;->k()[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    sget-object p1, Landroidx/appcompat/view/menu/bv0;->t:[Landroid/accounts/Account;

    monitor-exit p2

    return-object p1

    :cond_3
    new-array v0, v2, [Landroid/accounts/Account;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/c7;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/c7;->k()[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_4
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, p1, v0, p3, p4}, Landroidx/appcompat/view/menu/bv0;->G2(Landroidx/appcompat/view/menu/c7;[Landroid/accounts/Account;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    :goto_2
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public M0(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 16

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-nez p6, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v14, p0

    move-object v12, v0

    :goto_0
    move/from16 v0, p7

    goto :goto_1

    :cond_0
    move-object/from16 v14, p0

    move-object/from16 v12, p6

    goto :goto_0

    :goto_1
    invoke-virtual {v14, v0}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v2

    new-instance v15, Landroidx/appcompat/view/menu/bv0$d;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p5

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p2

    invoke-direct/range {v0 .. v13}, Landroidx/appcompat/view/menu/bv0$d;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/bv0$m;->h()V

    return-void

    :cond_1
    move-object/from16 v14, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v14, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public M1(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 9

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0;->M2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v2

    invoke-static {p3}, Landroidx/appcompat/view/menu/r4;->d([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p0, v2, p2, v7, p3}, Landroidx/appcompat/view/menu/bv0;->L2(Landroidx/appcompat/view/menu/c7;Ljava/lang/String;Ljava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v7, p4}, Landroidx/appcompat/view/menu/bv0;->Q2(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v3, Landroidx/appcompat/view/menu/bv0$a;

    invoke-direct {v3, p0, p1, v7, p4}, Landroidx/appcompat/view/menu/bv0$a;-><init>(Landroidx/appcompat/view/menu/bv0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;I)V

    new-instance p1, Landroidx/appcompat/view/menu/bv0$k;

    const/4 v8, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Landroidx/appcompat/view/menu/bv0$k;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/bv0$m;->h()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final M2()Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProcessRecord is null, PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public N1(Landroid/accounts/Account;I)Ljava/lang/String;
    .locals 2

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPassword: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller\'s uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/view/menu/bv0;->Z2(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N2(Landroid/accounts/Account;I)Ljava/util/HashMap;
    .locals 0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public final O2(Landroid/accounts/Account;Landroidx/appcompat/view/menu/c7;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/c7;->j(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public P2(I)Landroidx/appcompat/view/menu/c7;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/c7;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/c7;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/c7;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/c7;

    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final Q2(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0, p2, p3, p4}, Landroidx/appcompat/view/menu/bv0;->U2([Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    array-length p3, p2

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const/4 p4, 0x0

    aget-object v0, p2, p4

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "authAccount"

    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p2, p2, p4

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string p4, "accountType"

    invoke-virtual {p3, p4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/view/menu/bv0;->V2(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0;->V2(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public R0(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/bv0;->s1(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result p1

    return p1
.end method

.method public final R2(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroidx/appcompat/view/menu/c7;->d(Landroid/accounts/Account;)Landroidx/appcompat/view/menu/zu0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public S1(Ljava/lang/String;II)[Landroid/accounts/Account;
    .locals 4

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Landroidx/appcompat/view/menu/c7;->o:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/zu0;

    iget-object v2, v1, Landroidx/appcompat/view/menu/zu0;->p:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Landroidx/appcompat/view/menu/zu0;->m:Landroid/accounts/Account;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/accounts/Account;

    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final S2()V
    .locals 11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->a()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v3, v0, v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->a()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v4}, Landroidx/appcompat/view/menu/lr;->k(Ljava/io/InputStream;)[B

    move-result-object v3

    array-length v5, v3

    invoke-virtual {v0, v3, v2, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v3, Landroidx/appcompat/view/menu/c7;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    return-void

    :cond_1
    :try_start_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v6, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iget-object v8, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/c7;

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_2
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    goto :goto_3

    :goto_1
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    :catchall_2
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    :goto_3
    return-void

    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    throw v3
.end method

.method public T0(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZI)V
    .locals 10

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v2

    new-instance p4, Landroidx/appcompat/view/menu/bv0$f;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Landroidx/appcompat/view/menu/bv0$f;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p4}, Landroidx/appcompat/view/menu/bv0$m;->h()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public T2(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0;->n:Landroidx/appcompat/view/menu/bv0$i;

    iget-object v0, v0, Landroidx/appcompat/view/menu/bv0$i;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/bv0;->l:Landroidx/appcompat/view/menu/x6;

    const/16 v1, 0x80

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/x6;->O0(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0;->n:Landroidx/appcompat/view/menu/bv0$i;

    iget-object v0, v0, Landroidx/appcompat/view/menu/bv0$i;->a:Ljava/util/Map;

    new-instance v1, Landroidx/appcompat/view/menu/ho0;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/ho0;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/bv0;->H2(Ljava/util/List;Ljava/util/Map;Landroidx/appcompat/view/menu/ho0;)V

    return-void
.end method

.method public final U2([Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    if-le v0, v2, :cond_1

    return v2

    :cond_1
    aget-object p1, p1, v1

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/bv0;->c3(Landroid/accounts/Account;Ljava/lang/String;Landroidx/appcompat/view/menu/c7;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final V2(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public X0(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/c7;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/zu0;

    iget-object v4, v3, Landroidx/appcompat/view/menu/zu0;->m:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, v3, Landroidx/appcompat/view/menu/zu0;->o:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0;->d3()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0;->o:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/bv0;->o:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/z01;

    iget-object v3, v2, Landroidx/appcompat/view/menu/z01;->b:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Landroidx/appcompat/view/menu/z01;->a:I

    if-ne v3, p3, :cond_3

    iget-object v2, v2, Landroidx/appcompat/view/menu/z01;->d:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public X2(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/c7;->i(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Y(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 0

    return-void
.end method

.method public Y2(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/bv0;->o:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0;->o:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/z01;

    iget v5, v4, Landroidx/appcompat/view/menu/z01;->a:I

    iget v6, p1, Landroidx/appcompat/view/menu/c7;->n:I

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Landroidx/appcompat/view/menu/z01;->b:Landroid/accounts/Account;

    invoke-virtual {v5, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroidx/appcompat/view/menu/z01;->e:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroidx/appcompat/view/menu/z01;->f:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v5, v4, Landroidx/appcompat/view/menu/z01;->c:J

    cmp-long v5, v5, v0

    if-lez v5, :cond_1

    iget-object p1, v4, Landroidx/appcompat/view/menu/z01;->d:Ljava/lang/String;

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v2

    const/4 p1, 0x0

    return-object p1

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Z([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public Z2(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/c7;->d(Landroid/accounts/Account;)Landroidx/appcompat/view/menu/zu0;

    move-result-object p1

    if-nez p1, :cond_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/appcompat/view/menu/zu0;->n:Ljava/lang/String;

    monitor-exit v1

    return-object p1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a1(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Account cannot be null"

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/qj0;->b(ZLjava/lang/Object;)V

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    const-string v1, "Response cannot be null"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/qj0;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v4

    new-instance p4, Landroidx/appcompat/view/menu/bv0$l;

    move-object v2, p4

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/bv0$l;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {p4}, Landroidx/appcompat/view/menu/bv0$m;->h()V

    return-void
.end method

.method public final a3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/c7;->e(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic b2(Landroid/accounts/Account;I)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/bv0;->N2(Landroid/accounts/Account;I)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public final b3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Z
    .locals 1

    iget-object v0, p1, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/c7;->b(Landroid/accounts/Account;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0;->d3()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c1(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p4, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p4, p1}, Landroidx/appcompat/view/menu/c7;->e(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0;->d3()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c3(Landroid/accounts/Account;Ljava/lang/String;Landroidx/appcompat/view/menu/c7;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p3, p1}, Landroidx/appcompat/view/menu/c7;->d(Landroid/accounts/Account;)Landroidx/appcompat/view/menu/zu0;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/bv0;->J2(Landroid/accounts/Account;Ljava/lang/String;Landroidx/appcompat/view/menu/c7;)I

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public d1(Ljava/lang/String;Ljava/lang/String;I)[Landroid/accounts/Account;
    .locals 5

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p3, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p3, p3, Landroidx/appcompat/view/menu/c7;->o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/zu0;

    iget-object v3, v2, Landroidx/appcompat/view/menu/zu0;->m:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/appcompat/view/menu/zu0;->p:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v2, v2, Landroidx/appcompat/view/menu/zu0;->m:Landroid/accounts/Account;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/accounts/Account;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d2(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 15

    move-object v13, p0

    move-object/from16 v10, p1

    move-object/from16 v9, p2

    move/from16 v12, p3

    invoke-virtual {p0, v12}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v11

    if-eqz v2, :cond_1

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    new-instance v14, Landroidx/appcompat/view/menu/bv0$b;

    iget-object v4, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroidx/appcompat/view/menu/bv0$b;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Landroidx/appcompat/view/menu/c7;I)V

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/bv0$m;->h()V

    return-void

    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    invoke-interface {v10, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final d3()V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/c5;

    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->a()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/c5;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0;->m:Ljava/util/Map;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/c5;->d()Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-static {v1, v5}, Landroidx/appcompat/view/menu/lr;->l(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    invoke-virtual {v2, v5}, Landroidx/appcompat/view/menu/c5;->b(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v5, v2, v3

    invoke-static {v2}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v2, v5}, Landroidx/appcompat/view/menu/c5;->a(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v5, v2, v3

    invoke-static {v2}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    :try_start_7
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v5, v4, v3

    invoke-static {v4}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    :goto_3
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public e3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/c7;->i(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0;->d3()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f0(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p3

    iget-object v1, p3, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p3, Landroidx/appcompat/view/menu/c7;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/zu0;

    iget-object v4, v3, Landroidx/appcompat/view/menu/zu0;->m:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroidx/appcompat/view/menu/zu0;->m:Landroid/accounts/Account;

    invoke-virtual {p3, v4}, Landroidx/appcompat/view/menu/c7;->j(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroidx/appcompat/view/menu/zu0;->m:Landroid/accounts/Account;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f1(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 15

    move-object/from16 v10, p2

    if-eqz p1, :cond_1

    if-eqz v10, :cond_0

    move-object v13, p0

    move/from16 v0, p6

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v2

    new-instance v14, Landroidx/appcompat/view/menu/bv0$e;

    iget-object v4, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p4

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Landroidx/appcompat/view/menu/bv0$e;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/bv0$m;->h()V

    return-void

    :cond_0
    move-object v13, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v13, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    move-object v1, p0

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/z01;

    move-object v2, p1

    iget v3, v2, Landroidx/appcompat/view/menu/c7;->n:I

    move-object v2, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Landroidx/appcompat/view/menu/z01;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, v1, Landroidx/appcompat/view/menu/bv0;->o:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Landroidx/appcompat/view/menu/bv0;->o:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final g3(Landroid/accounts/Account;Ljava/lang/String;ILandroidx/appcompat/view/menu/c7;)Z
    .locals 1

    iget-object v0, p4, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p4, p1}, Landroidx/appcompat/view/menu/c7;->d(Landroid/accounts/Account;)Landroidx/appcompat/view/menu/zu0;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/zu0;->p:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Ljava/lang/String;ZI)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bv0;->T2(Ljava/lang/String;)V

    return-void
.end method

.method public final h3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/c7;->l(Landroid/accounts/Account;)V

    const/4 p1, 0x1

    return p1
.end method

.method public i1(Landroid/accounts/Account;I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAccountExplicitly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pid "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/view/menu/bv0;->b3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Z

    move-result p1

    return p1
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0;->S2()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/bv0;->T2(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0;->l:Landroidx/appcompat/view/menu/x6;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/x6;->k(Landroidx/appcompat/view/menu/bh0;)V

    return-void
.end method

.method public k(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bv0;->T2(Ljava/lang/String;)V

    return-void
.end method

.method public k1(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v9, p6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v4, "response cannot be null"

    invoke-static {v2, v4}, Landroidx/appcompat/view/menu/qj0;->b(ZLjava/lang/Object;)V

    const/4 v2, 0x7

    if-nez v10, :cond_1

    :try_start_0
    const-string v0, "account is null"

    invoke-interface {v3, v2, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez v11, :cond_2

    const-string v0, "authTokenType is null"

    invoke-interface {v3, v2, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_2
    move/from16 v2, p7

    invoke-virtual {v15, v2}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v2

    iget-object v4, v15, Landroidx/appcompat/view/menu/bv0;->n:Landroidx/appcompat/view/menu/bv0$i;

    iget-object v4, v4, Landroidx/appcompat/view/menu/bv0$i;->a:Ljava/util/Map;

    iget-object v5, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/bv0$j;

    if-eqz v4, :cond_3

    iget-object v4, v4, Landroidx/appcompat/view/menu/bv0$j;->a:Landroid/accounts/AuthenticatorDescription;

    iget-boolean v4, v4, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v4, :cond_3

    move v13, v1

    goto :goto_1

    :cond_3
    move v13, v0

    :goto_1
    const-string v0, "androidPackageName"

    invoke-virtual {v9, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v0, "callerUid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v9, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "callerPid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v9, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_4

    const-string v0, "notifyOnAuthFailure"

    invoke-virtual {v9, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    const-string v0, "accountType"

    const-string v1, "authAccount"

    const-string v4, "authtoken"

    if-nez v13, :cond_5

    invoke-virtual {v15, v2, v10, v11}, Landroidx/appcompat/view/menu/bv0;->X2(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v3, v2}, Landroidx/appcompat/view/menu/bv0;->V2(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    :cond_5
    if-eqz v13, :cond_6

    invoke-virtual {v15, v2, v10, v11, v14}, Landroidx/appcompat/view/menu/bv0;->Y2(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v2, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v3, v2}, Landroidx/appcompat/view/menu/bv0;->V2(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    :cond_6
    new-instance v16, Landroidx/appcompat/view/menu/bv0$c;

    iget-object v4, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v0 .. v14}, Landroidx/appcompat/view/menu/bv0$c;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroidx/appcompat/view/menu/bv0$m;->h()V

    return-void
.end method

.method public k2(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/c7;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/zu0;

    iget-object v3, p0, Landroidx/appcompat/view/menu/bv0;->n:Landroidx/appcompat/view/menu/bv0$i;

    iget-object v3, v3, Landroidx/appcompat/view/menu/bv0$i;->a:Ljava/util/Map;

    iget-object v2, v2, Landroidx/appcompat/view/menu/zu0;->m:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/bv0$j;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/appcompat/view/menu/bv0$j;->a:Landroid/accounts/AuthenticatorDescription;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/accounts/AuthenticatorDescription;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/AuthenticatorDescription;

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public l2(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string v0, "Account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "AuthTokenType cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p3, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p3, p1}, Landroidx/appcompat/view/menu/c7;->i(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m0(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 1

    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/bv0;->g3(Landroid/accounts/Account;Ljava/lang/String;ILandroidx/appcompat/view/menu/c7;)Z

    move-result p1

    return p1
.end method

.method public p0(Landroid/accounts/Account;I)Z
    .locals 1

    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/view/menu/bv0;->h3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;)Z

    move-result p1

    return p1
.end method

.method public r(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "key cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Landroidx/appcompat/view/menu/bv0;->a3(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r2(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public s1(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;I)Z
    .locals 6

    invoke-virtual {p0, p5}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/bv0;->E2(Landroidx/appcompat/view/menu/c7;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public w1([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public y0(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "accountType cannot be null"

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/qj0;->b(ZLjava/lang/Object;)V

    if-eqz p3, :cond_1

    move v0, v1

    :cond_1
    const-string v1, "authTokenType cannot be null"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/qj0;->b(ZLjava/lang/Object;)V

    move-object v0, p0

    move/from16 v1, p4

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v4

    new-instance v1, Landroidx/appcompat/view/menu/bv0$g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v2 .. v12}, Landroidx/appcompat/view/menu/bv0$g;-><init>(Landroidx/appcompat/view/menu/bv0;Landroidx/appcompat/view/menu/c7;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/bv0$m;->h()V

    return-void
.end method

.method public y1(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "Account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/bv0;->P2(I)Landroidx/appcompat/view/menu/c7;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/view/menu/c7;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/c7;->d(Landroid/accounts/Account;)Landroidx/appcompat/view/menu/zu0;

    move-result-object v0

    iput-object p2, v0, Landroidx/appcompat/view/menu/zu0;->n:Ljava/lang/String;

    iget-object p2, v0, Landroidx/appcompat/view/menu/zu0;->q:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bv0;->d3()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p2, p0, Landroidx/appcompat/view/menu/bv0;->o:Ljava/util/LinkedList;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/bv0;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/z01;

    iget-object v2, v1, Landroidx/appcompat/view/menu/z01;->b:Landroid/accounts/Account;

    invoke-virtual {v2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Landroidx/appcompat/view/menu/z01;->a:I

    if-ne v1, p3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
