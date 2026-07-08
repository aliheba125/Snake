.class public Landroidx/appcompat/view/menu/y81;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/y81$k;,
        Landroidx/appcompat/view/menu/y81$l;,
        Landroidx/appcompat/view/menu/y81$j;,
        Landroidx/appcompat/view/menu/y81$i;,
        Landroidx/appcompat/view/menu/y81$h;,
        Landroidx/appcompat/view/menu/y81$g;,
        Landroidx/appcompat/view/menu/y81$m;,
        Landroidx/appcompat/view/menu/y81$b;,
        Landroidx/appcompat/view/menu/y81$a;,
        Landroidx/appcompat/view/menu/y81$n;,
        Landroidx/appcompat/view/menu/y81$e;,
        Landroidx/appcompat/view/menu/y81$d;,
        Landroidx/appcompat/view/menu/y81$c;,
        Landroidx/appcompat/view/menu/y81$f;
    }
.end annotation


# static fields
.field public static final b:Landroidx/appcompat/view/menu/y81;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/y81$l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/y81$k;->q:Landroidx/appcompat/view/menu/y81;

    sput-object v0, Landroidx/appcompat/view/menu/y81;->b:Landroidx/appcompat/view/menu/y81;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/y81$l;->b:Landroidx/appcompat/view/menu/y81;

    sput-object v0, Landroidx/appcompat/view/menu/y81;->b:Landroidx/appcompat/view/menu/y81;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/y81$k;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/y81$k;-><init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Landroidx/appcompat/view/menu/y81$j;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/y81$j;-><init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/y81$i;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/y81$i;-><init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p1, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 7
    instance-of v1, p1, Landroidx/appcompat/view/menu/y81$k;

    if-eqz v1, :cond_0

    .line 8
    new-instance v0, Landroidx/appcompat/view/menu/y81$k;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/view/menu/y81$k;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/y81$k;-><init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$k;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 9
    instance-of v0, p1, Landroidx/appcompat/view/menu/y81$j;

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Landroidx/appcompat/view/menu/y81$j;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/view/menu/y81$j;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/y81$j;-><init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$j;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p1, Landroidx/appcompat/view/menu/y81$i;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Landroidx/appcompat/view/menu/y81$i;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/view/menu/y81$i;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/y81$i;-><init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$i;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    goto :goto_0

    .line 13
    :cond_2
    instance-of v0, p1, Landroidx/appcompat/view/menu/y81$h;

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Landroidx/appcompat/view/menu/y81$h;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/view/menu/y81$h;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/y81$h;-><init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$h;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    goto :goto_0

    .line 15
    :cond_3
    instance-of v0, p1, Landroidx/appcompat/view/menu/y81$g;

    if-eqz v0, :cond_4

    .line 16
    new-instance v0, Landroidx/appcompat/view/menu/y81$g;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/view/menu/y81$g;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/y81$g;-><init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$g;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    goto :goto_0

    .line 17
    :cond_4
    new-instance v0, Landroidx/appcompat/view/menu/y81$l;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/y81$l;-><init>(Landroidx/appcompat/view/menu/y81;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    .line 18
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/y81$l;->e(Landroidx/appcompat/view/menu/y81;)V

    goto :goto_1

    .line 19
    :cond_5
    new-instance p1, Landroidx/appcompat/view/menu/y81$l;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/y81$l;-><init>(Landroidx/appcompat/view/menu/y81;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    :goto_1
    return-void
.end method

.method public static m(Landroidx/appcompat/view/menu/h50;IIII)Landroidx/appcompat/view/menu/h50;
    .locals 5

    iget v0, p0, Landroidx/appcompat/view/menu/h50;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Landroidx/appcompat/view/menu/h50;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroidx/appcompat/view/menu/h50;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroidx/appcompat/view/menu/h50;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Landroidx/appcompat/view/menu/h50;->b(IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/view/WindowInsets;)Landroidx/appcompat/view/menu/y81;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/y81;->u(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/appcompat/view/menu/y81;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/appcompat/view/menu/y81;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/y81;

    invoke-static {p0}, Landroidx/appcompat/view/menu/qj0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/y81;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/m51;->D(Landroid/view/View;)Landroidx/appcompat/view/menu/y81;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/y81;->q(Landroidx/appcompat/view/menu/y81;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/y81;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$l;->a()Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$l;->b()Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$l;->c()Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y81$l;->d(Landroid/view/View;)V

    return-void
.end method

.method public e()Landroidx/appcompat/view/menu/im;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$l;->f()Landroidx/appcompat/view/menu/im;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/y81;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/y81;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    iget-object p1, p1, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/yf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)Landroidx/appcompat/view/menu/h50;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y81$l;->g(I)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1
.end method

.method public g()Landroidx/appcompat/view/menu/h50;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$l;->i()Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$l;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    iget v0, v0, Landroidx/appcompat/view/menu/h50;->d:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$l;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$l;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    iget v0, v0, Landroidx/appcompat/view/menu/h50;->a:I

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$l;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    iget v0, v0, Landroidx/appcompat/view/menu/h50;->c:I

    return v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$l;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    iget v0, v0, Landroidx/appcompat/view/menu/h50;->b:I

    return v0
.end method

.method public l(IIII)Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/y81$l;->m(IIII)Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    return-object p1
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$l;->n()Z

    move-result v0

    return v0
.end method

.method public o([Landroidx/appcompat/view/menu/h50;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y81$l;->p([Landroidx/appcompat/view/menu/h50;)V

    return-void
.end method

.method public p(Landroidx/appcompat/view/menu/h50;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y81$l;->q(Landroidx/appcompat/view/menu/h50;)V

    return-void
.end method

.method public q(Landroidx/appcompat/view/menu/y81;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y81$l;->r(Landroidx/appcompat/view/menu/y81;)V

    return-void
.end method

.method public r(Landroidx/appcompat/view/menu/h50;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y81$l;->s(Landroidx/appcompat/view/menu/h50;)V

    return-void
.end method

.method public s()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81;->a:Landroidx/appcompat/view/menu/y81$l;

    instance-of v1, v0, Landroidx/appcompat/view/menu/y81$g;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/y81$g;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
