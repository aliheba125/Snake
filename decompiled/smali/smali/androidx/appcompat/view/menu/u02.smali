.class public final Landroidx/appcompat/view/menu/u02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/d02;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d02;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/u02;->m:Landroidx/appcompat/view/menu/d02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/u02;->m:Landroidx/appcompat/view/menu/d02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method
