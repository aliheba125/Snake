.class public final Landroidx/appcompat/view/menu/wv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/wv$a;,
        Landroidx/appcompat/view/menu/wv$b;,
        Landroidx/appcompat/view/menu/wv$c;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/wv;

.field public static b:Landroidx/appcompat/view/menu/wv$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/wv;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/wv;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/wv;->a:Landroidx/appcompat/view/menu/wv;

    sget-object v0, Landroidx/appcompat/view/menu/wv$c;->d:Landroidx/appcompat/view/menu/wv$c;

    sput-object v0, Landroidx/appcompat/view/menu/wv;->b:Landroidx/appcompat/view/menu/wv$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Landroidx/appcompat/view/menu/d71;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/wv;->d(Ljava/lang/String;Landroidx/appcompat/view/menu/d71;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Landroidx/appcompat/view/menu/d71;)V
    .locals 2

    const-string v0, "$violation"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy violation with PENALTY_DEATH in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    throw p1
.end method

.method public static final f(Landroidx/appcompat/view/menu/av;Ljava/lang/String;)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousFragmentId"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/view/menu/rv;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/rv;-><init>(Landroidx/appcompat/view/menu/av;Ljava/lang/String;)V

    sget-object p1, Landroidx/appcompat/view/menu/wv;->a:Landroidx/appcompat/view/menu/wv;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/wv;->e(Landroidx/appcompat/view/menu/d71;)V

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/wv;->b(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/wv$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/wv$c;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/wv$a;->o:Landroidx/appcompat/view/menu/wv$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v1, p0, v2}, Landroidx/appcompat/view/menu/wv;->j(Landroidx/appcompat/view/menu/wv$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/view/menu/wv;->c(Landroidx/appcompat/view/menu/wv$c;Landroidx/appcompat/view/menu/d71;)V

    :cond_0
    return-void
.end method

.method public static final g(Landroidx/appcompat/view/menu/av;Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/view/menu/ua1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/ua1;-><init>(Landroidx/appcompat/view/menu/av;Landroid/view/ViewGroup;)V

    sget-object p1, Landroidx/appcompat/view/menu/wv;->a:Landroidx/appcompat/view/menu/wv;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/wv;->e(Landroidx/appcompat/view/menu/d71;)V

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/wv;->b(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/wv$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/wv$c;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/wv$a;->u:Landroidx/appcompat/view/menu/wv$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v1, p0, v2}, Landroidx/appcompat/view/menu/wv;->j(Landroidx/appcompat/view/menu/wv$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/view/menu/wv;->c(Landroidx/appcompat/view/menu/wv$c;Landroidx/appcompat/view/menu/d71;)V

    :cond_0
    return-void
.end method

.method public static final h(Landroidx/appcompat/view/menu/av;Landroidx/appcompat/view/menu/av;I)V
    .locals 3

    const-string v0, "fragment"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedParentFragment"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/view/menu/va1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/view/menu/va1;-><init>(Landroidx/appcompat/view/menu/av;Landroidx/appcompat/view/menu/av;I)V

    sget-object p1, Landroidx/appcompat/view/menu/wv;->a:Landroidx/appcompat/view/menu/wv;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/wv;->e(Landroidx/appcompat/view/menu/d71;)V

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/wv;->b(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/wv$c;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/wv$c;->a()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/wv$a;->q:Landroidx/appcompat/view/menu/wv$a;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, p0, v1}, Landroidx/appcompat/view/menu/wv;->j(Landroidx/appcompat/view/menu/wv$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/wv;->c(Landroidx/appcompat/view/menu/wv$c;Landroidx/appcompat/view/menu/d71;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/wv$c;
    .locals 2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->C()Landroidx/appcompat/view/menu/mv;

    move-result-object v0

    const-string v1, "declaringFragment.parentFragmentManager"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->o0()Landroidx/appcompat/view/menu/wv$c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->o0()Landroidx/appcompat/view/menu/wv$c;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->B()Landroidx/appcompat/view/menu/av;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/appcompat/view/menu/wv;->b:Landroidx/appcompat/view/menu/wv$c;

    return-object p1
.end method

.method public final c(Landroidx/appcompat/view/menu/wv$c;Landroidx/appcompat/view/menu/d71;)V
    .locals 4

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d71;->a()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/wv$c;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/wv$a;->m:Landroidx/appcompat/view/menu/wv$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy violation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/wv$c;->b()Landroidx/appcompat/view/menu/wv$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/wv$c;->a()Ljava/util/Set;

    move-result-object p1

    sget-object v2, Landroidx/appcompat/view/menu/wv$a;->n:Landroidx/appcompat/view/menu/wv$a;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/appcompat/view/menu/vv;

    invoke-direct {p1, v1, p2}, Landroidx/appcompat/view/menu/vv;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/d71;)V

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/wv;->i(Landroidx/appcompat/view/menu/av;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final e(Landroidx/appcompat/view/menu/d71;)V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrictMode violation in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d71;->a()Landroidx/appcompat/view/menu/av;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final i(Landroidx/appcompat/view/menu/av;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->T()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av;->C()Landroidx/appcompat/view/menu/mv;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mv;->j0()Landroidx/appcompat/view/menu/fv;

    const/4 p1, 0x0

    throw p1
.end method

.method public final j(Landroidx/appcompat/view/menu/wv$c;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/wv$c;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/appcompat/view/menu/d71;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/qc;->n(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p2

    return p1
.end method
