.class public final Landroidx/appcompat/view/menu/sp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/qq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/sp$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/sp;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/sp$a;->a()Landroidx/appcompat/view/menu/sp;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/rp;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/lj0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/sp;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sp;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
