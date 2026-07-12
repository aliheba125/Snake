.class public final Landroidx/appcompat/view/menu/lr0$b;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/lr0;->l()Z
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

    iput-object p1, p0, Landroidx/appcompat/view/menu/lr0$b;->n:Landroidx/appcompat/view/menu/lr0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/lr0$b;->n:Landroidx/appcompat/view/menu/lr0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/lr0;->a(Landroidx/appcompat/view/menu/lr0;)Landroidx/appcompat/view/menu/qf;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf;->b()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/lr0$b;->n:Landroidx/appcompat/view/menu/lr0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/lr0;->d(Landroidx/appcompat/view/menu/lr0;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v5, "addWindowLayoutInfoListener"

    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v0, v5, v4

    const-string v0, "removeWindowLayoutInfoListener"

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/fo0;->a:Landroidx/appcompat/view/menu/fo0;

    const-string v5, "addListenerMethod"

    invoke-static {v2, v5}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/fo0;->d(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "removeListenerMethod"

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/fo0;->d(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lr0$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
