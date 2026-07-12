.class public final Landroidx/appcompat/view/menu/kr0$b;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/kr0;->f()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/kr0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kr0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/kr0$b;->n:Landroidx/appcompat/view/menu/kr0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/kr0$b;->n:Landroidx/appcompat/view/menu/kr0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kr0;->b(Landroidx/appcompat/view/menu/kr0;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getWindowExtensions"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/kr0$b;->n:Landroidx/appcompat/view/menu/kr0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kr0;->c()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/fo0;->a:Landroidx/appcompat/view/menu/fo0;

    const-string v4, "getWindowExtensionsMethod"

    invoke-static {v0, v4}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/view/menu/fo0;->c(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/fo0;->d(Ljava/lang/reflect/Method;)Z

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

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kr0$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
