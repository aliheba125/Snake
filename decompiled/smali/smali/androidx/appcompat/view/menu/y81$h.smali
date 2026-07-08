.class public Landroidx/appcompat/view/menu/y81$h;
.super Landroidx/appcompat/view/menu/y81$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public m:Landroidx/appcompat/view/menu/h50;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/y81$g;-><init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$h;->m:Landroidx/appcompat/view/menu/h50;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$h;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/y81$g;-><init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$g;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$h;->m:Landroidx/appcompat/view/menu/h50;

    .line 3
    iget-object p1, p2, Landroidx/appcompat/view/menu/y81$h;->m:Landroidx/appcompat/view/menu/h50;

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$h;->m:Landroidx/appcompat/view/menu/h50;

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/y81;->t(Landroid/view/WindowInsets;)Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroidx/appcompat/view/menu/y81;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/y81;->t(Landroid/view/WindowInsets;)Landroidx/appcompat/view/menu/y81;

    move-result-object v0

    return-object v0
.end method

.method public final i()Landroidx/appcompat/view/menu/h50;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$h;->m:Landroidx/appcompat/view/menu/h50;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/h50;->b(IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$h;->m:Landroidx/appcompat/view/menu/h50;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$h;->m:Landroidx/appcompat/view/menu/h50;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public s(Landroidx/appcompat/view/menu/h50;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$h;->m:Landroidx/appcompat/view/menu/h50;

    return-void
.end method
