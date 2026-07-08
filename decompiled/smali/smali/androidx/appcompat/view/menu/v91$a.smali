.class public abstract Landroidx/appcompat/view/menu/v91$a;
.super Landroidx/appcompat/view/menu/v91$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/v91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/Window;

.field public final b:Landroidx/appcompat/view/menu/uv0;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroidx/appcompat/view/menu/uv0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/v91$e;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/v91$a;->a:Landroid/view/Window;

    iput-object p2, p0, Landroidx/appcompat/view/menu/v91$a;->b:Landroidx/appcompat/view/menu/uv0;

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    and-int v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/v91$a;->f(I)V

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/v91$a;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/v91$a;->a:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public final f(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/v91$a;->b:Landroidx/appcompat/view/menu/uv0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/uv0;->a()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/v91$a;->g(I)V

    return-void

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/v91$a;->g(I)V

    const/16 p1, 0x400

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/v91$a;->h(I)V

    return-void
.end method

.method public g(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/v91$a;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public h(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/v91$a;->a:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
