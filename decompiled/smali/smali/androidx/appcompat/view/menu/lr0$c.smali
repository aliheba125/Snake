.class public final Landroidx/appcompat/view/menu/lr0$c;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/lr0;->m()Z
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

    iput-object p1, p0, Landroidx/appcompat/view/menu/lr0$c;->n:Landroidx/appcompat/view/menu/lr0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/lr0$c;->n:Landroidx/appcompat/view/menu/lr0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/lr0;->d(Landroidx/appcompat/view/menu/lr0;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Landroidx/window/extensions/core/util/function/Consumer;

    aput-object v4, v1, v2

    const-string v5, "addWindowLayoutInfoListener"

    invoke-virtual {v0, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v3

    const-string v4, "removeWindowLayoutInfoListener"

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v4, Landroidx/appcompat/view/menu/fo0;->a:Landroidx/appcompat/view/menu/fo0;

    const-string v5, "addListenerMethod"

    invoke-static {v1, v5}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/fo0;->d(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "removeListenerMethod"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/view/menu/fo0;->d(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lr0$c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
