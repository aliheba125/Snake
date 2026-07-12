.class public final Landroidx/appcompat/view/menu/t02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/y32;


# static fields
.field public static final a:Landroidx/appcompat/view/menu/t02;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/t02;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/t02;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/t02;->a:Landroidx/appcompat/view/menu/t02;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Landroidx/appcompat/view/menu/t02;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/t02;->a:Landroidx/appcompat/view/menu/t02;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/appcompat/view/menu/s32;
    .locals 4

    const-class v0, Landroidx/appcompat/view/menu/q02;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/q02;->n(Ljava/lang/Class;)Landroidx/appcompat/view/menu/q02;

    move-result-object v0

    sget v1, Landroidx/appcompat/view/menu/q02$c;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroidx/appcompat/view/menu/q02;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/s32;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get message info for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/q02;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
