.class public final Landroidx/appcompat/view/menu/p$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Landroidx/appcompat/view/menu/p$d;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/p$d;

    new-instance v1, Landroidx/appcompat/view/menu/p$d$a;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/p$d$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/p$d;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Landroidx/appcompat/view/menu/p$d;->b:Landroidx/appcompat/view/menu/p$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/p;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Landroidx/appcompat/view/menu/p$d;->a:Ljava/lang/Throwable;

    return-void
.end method
