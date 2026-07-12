.class public final Landroidx/appcompat/view/menu/kp;
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

    iput-object p1, p0, Landroidx/appcompat/view/menu/kp;->a:Landroidx/appcompat/view/menu/dl0;

    return-void
.end method

.method public static a(Landroidx/appcompat/view/menu/dl0;)Landroidx/appcompat/view/menu/kp;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/kp;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/kp;-><init>(Landroidx/appcompat/view/menu/dl0;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/ip;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/lj0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/kp;->a:Landroidx/appcompat/view/menu/dl0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/dl0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kp;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kp;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
