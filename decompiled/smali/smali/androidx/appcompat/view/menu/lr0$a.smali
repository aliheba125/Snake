.class public final Landroidx/appcompat/view/menu/lr0$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/lr0;->k()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/lr0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/lr0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/lr0$a;->n:Landroidx/appcompat/view/menu/lr0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/lr0$a;->n:Landroidx/appcompat/view/menu/lr0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/lr0;->b(Landroidx/appcompat/view/menu/lr0;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getBounds"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getType"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "getState"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v4, Landroidx/appcompat/view/menu/fo0;->a:Landroidx/appcompat/view/menu/fo0;

    const-string v5, "getBoundsMethod"

    invoke-static {v2, v5}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, Landroid/graphics/Rect;

    invoke-static {v5}, Landroidx/appcompat/view/menu/do0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/k70;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroidx/appcompat/view/menu/fo0;->b(Ljava/lang/reflect/Method;Landroidx/appcompat/view/menu/k70;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/fo0;->d(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "getTypeMethod"

    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Landroidx/appcompat/view/menu/do0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/k70;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroidx/appcompat/view/menu/fo0;->b(Ljava/lang/reflect/Method;Landroidx/appcompat/view/menu/k70;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/fo0;->d(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "getStateMethod"

    invoke-static {v0, v3}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/appcompat/view/menu/do0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/k70;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroidx/appcompat/view/menu/fo0;->b(Ljava/lang/reflect/Method;Landroidx/appcompat/view/menu/k70;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4, v0}, Landroidx/appcompat/view/menu/fo0;->d(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lr0$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
