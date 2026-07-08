.class public abstract Landroidx/appcompat/view/menu/qc1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/hr;

.field public static final b:[Landroidx/appcompat/view/menu/hr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/hr;

    const-string v1, "CLIENT_TELEMETRY"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/hr;-><init>(Ljava/lang/String;J)V

    sput-object v0, Landroidx/appcompat/view/menu/qc1;->a:Landroidx/appcompat/view/menu/hr;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/appcompat/view/menu/hr;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Landroidx/appcompat/view/menu/qc1;->b:[Landroidx/appcompat/view/menu/hr;

    return-void
.end method
