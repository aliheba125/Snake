.class public final enum Landroidx/appcompat/view/menu/e31;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum m:Landroidx/appcompat/view/menu/e31;

.field public static final n:Landroid/os/Handler;

.field public static final synthetic o:[Landroidx/appcompat/view/menu/e31;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/e31;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/e31;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/e31;->m:Landroidx/appcompat/view/menu/e31;

    filled-new-array {v0}, [Landroidx/appcompat/view/menu/e31;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/e31;->o:[Landroidx/appcompat/view/menu/e31;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroidx/appcompat/view/menu/e31;->n:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/e31;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/e31;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/e31;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/e31;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/e31;->o:[Landroidx/appcompat/view/menu/e31;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/e31;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/e31;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/e31;->n:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
