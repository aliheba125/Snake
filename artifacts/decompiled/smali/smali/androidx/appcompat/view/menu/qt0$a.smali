.class public Landroidx/appcompat/view/menu/qt0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/qt0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/qt0$a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public b:Landroidx/appcompat/view/menu/qt0$a$b;

.field public c:Landroidx/appcompat/view/menu/qt0$a$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/qt0$a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/qt0$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/qt0$a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/qt0$a$b;)Landroidx/appcompat/view/menu/f8$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$a;->c:Landroidx/appcompat/view/menu/qt0$a$b;

    iput-object p1, p0, Landroidx/appcompat/view/menu/qt0$a;->c:Landroidx/appcompat/view/menu/qt0$a$b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/appcompat/view/menu/qt0$a$a;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/view/menu/qt0$a$a;-><init>(Landroidx/appcompat/view/menu/qt0$a;Landroidx/appcompat/view/menu/qt0$a$b;)V

    :goto_0
    return-object p1
.end method

.method public c(I)Landroidx/appcompat/view/menu/qt0$a$b;
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$a;->b:Landroidx/appcompat/view/menu/qt0$a$b;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qt0$a$b;

    iput-object v0, p0, Landroidx/appcompat/view/menu/qt0$a;->b:Landroidx/appcompat/view/menu/qt0$a$b;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$a;->b:Landroidx/appcompat/view/menu/qt0$a$b;

    if-eqz v0, :cond_1

    iget v1, v0, Landroidx/appcompat/view/menu/qt0$a$b;->a:I

    if-ge v1, p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qt0$a;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qt0$a$b;

    iput-object v0, p0, Landroidx/appcompat/view/menu/qt0$a;->b:Landroidx/appcompat/view/menu/qt0$a$b;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const-string v2, "Cannot find config with generation: "

    const-string v3, "SettingsChannel"

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", after exhausting the queue."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    iget v4, v0, Landroidx/appcompat/view/menu/qt0$a$b;->a:I

    if-eq v4, p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", the oldest config is now: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/qt0$a;->b:Landroidx/appcompat/view/menu/qt0$a$b;

    iget p1, p1, Landroidx/appcompat/view/menu/qt0$a$b;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    return-object v0
.end method
