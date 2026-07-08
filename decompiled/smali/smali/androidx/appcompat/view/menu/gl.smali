.class public Landroidx/appcompat/view/menu/gl;
.super Landroidx/appcompat/view/menu/p;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/gl$c;,
        Landroidx/appcompat/view/menu/gl$b;
    }
.end annotation


# instance fields
.field public final t:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gl$c;)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/p;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/gl$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/gl$a;-><init>(Landroidx/appcompat/view/menu/gl;)V

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/gl$c;->a(Landroidx/appcompat/view/menu/gl$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/gl;->t:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static synthetic w(Landroidx/appcompat/view/menu/gl;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/p;->s(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Landroidx/appcompat/view/menu/gl;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/p;->t(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/gl;->y(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/gl;->t:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/p;->v()Z

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/gl;->t:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public y(Ljava/util/concurrent/Delayed;)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gl;->t:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
