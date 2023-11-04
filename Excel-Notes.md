# Fail Alert Workaround (SOP):

## GHL WebHook:
If theory was correct, that base on GHL WebHook behavior it will attempt to resend the HTTP request when it fails. Then we can connect the Google Excel Sheet, by doing so, it should log multiple times the same payload when the request fails.

## Google Excel:
Then using conditional formatting of Google Excel, we can filter the payload and see if there's a multiple entry for the same information from GHL WebHook.

- Then using the V-Lookup we can properly connect and filter the 'RAW' sheet and 'Alert' sheet. Then add password on the RAW sheet to avoid other people editing it by mistake.

- Only the authorize person should be allowed to delete the content of the RAW sheet once confirm there was no issue.

> [!NOTE]
> The question will be at the test phase, how can we trigger to fail the WebHook.

- If the test was successful, we can create a Google Excel at share drive that is accessible for everyone who needs to check the status of the form after submission. (Ideal time to check on it is 5 minutes after submission to give the system some time to attempt to resend form if needed).


## Option:
I saw that it is possible to connect the GHL WebHook to Slack using the Zapier Premium Subscription. However, it is not an Alert when it fails. It simly sends an automated message from GHL WebHook to Slack for every payload that was sent. So the same understanding will apply, if there's a 'multiple request for the same payload' then it fails.

## Reference links: 
```
https://www.youtube.com/watch?v=Ugexxag8L4g
```

```
https://www.youtube.com/watch?v=r0zerMJJvV0
```

```
https://techcommunity.microsoft.com/t5/excel/conditional-formatting-based-on-the-color-of-cell/m-p/1611832
```

```
https://techcommunity.microsoft.com/t5/excel/can-you-conditional-format-a-cell-based-on-the-color-of-other/m-p/2240275
```