.class public final Landroidx/appcompat/view/menu/r01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/qq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/r01$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/r01;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/r01$a;->a()Landroidx/appcompat/view/menu/r01;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroidx/appcompat/view/menu/ec;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/q01;->a()Landroidx/appcompat/view/menu/ec;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/lj0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ec;

    return-object v0
.end method


# virtual methods
.method public c()Landroidx/appcompat/view/menu/ec;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/r01;->b()Landroidx/appcompat/view/menu/ec;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r01;->c()Landroidx/appcompat/view/menu/ec;

    move-result-object v0

    return-object v0
.end method
