.class public final Landroidx/appcompat/view/menu/as0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/qq;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/dl0;

.field public final b:Landroidx/appcompat/view/menu/dl0;

.field public final c:Landroidx/appcompat/view/menu/dl0;

.field public final d:Landroidx/appcompat/view/menu/dl0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/as0;->a:Landroidx/appcompat/view/menu/dl0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/as0;->b:Landroidx/appcompat/view/menu/dl0;

    iput-object p3, p0, Landroidx/appcompat/view/menu/as0;->c:Landroidx/appcompat/view/menu/dl0;

    iput-object p4, p0, Landroidx/appcompat/view/menu/as0;->d:Landroidx/appcompat/view/menu/dl0;

    return-void
.end method

.method public static a(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/as0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/as0;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/as0;-><init>(Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;Landroidx/appcompat/view/menu/dl0;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroidx/appcompat/view/menu/gp;Landroidx/appcompat/view/menu/ur0;Landroidx/appcompat/view/menu/ec;)Landroidx/appcompat/view/menu/pa1;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/zr0;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/gp;Landroidx/appcompat/view/menu/ur0;Landroidx/appcompat/view/menu/ec;)Landroidx/appcompat/view/menu/pa1;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/lj0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/pa1;

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/pa1;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/as0;->a:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/view/menu/as0;->b:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/gp;

    iget-object v2, p0, Landroidx/appcompat/view/menu/as0;->c:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/ur0;

    iget-object v3, p0, Landroidx/appcompat/view/menu/as0;->d:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {v3}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/ec;

    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/as0;->c(Landroid/content/Context;Landroidx/appcompat/view/menu/gp;Landroidx/appcompat/view/menu/ur0;Landroidx/appcompat/view/menu/ec;)Landroidx/appcompat/view/menu/pa1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/as0;->b()Landroidx/appcompat/view/menu/pa1;

    move-result-object v0

    return-object v0
.end method
