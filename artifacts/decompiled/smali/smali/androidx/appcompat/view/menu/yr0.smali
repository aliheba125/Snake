.class public final Landroidx/appcompat/view/menu/yr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/qq;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/dl0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/dl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/yr0;->a:Landroidx/appcompat/view/menu/dl0;

    return-void
.end method

.method public static a(Landroidx/appcompat/view/menu/ec;)Landroidx/appcompat/view/menu/ur0;
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/xr0;->a(Landroidx/appcompat/view/menu/ec;)Landroidx/appcompat/view/menu/ur0;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/lj0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/ur0;

    return-object p0
.end method

.method public static b(Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/yr0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/yr0;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/yr0;-><init>(Landroidx/appcompat/view/menu/dl0;)V

    return-object v0
.end method


# virtual methods
.method public c()Landroidx/appcompat/view/menu/ur0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/yr0;->a:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ec;

    invoke-static {v0}, Landroidx/appcompat/view/menu/yr0;->a(Landroidx/appcompat/view/menu/ec;)Landroidx/appcompat/view/menu/ur0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/yr0;->c()Landroidx/appcompat/view/menu/ur0;

    move-result-object v0

    return-object v0
.end method
